/*
This file is the main entry point for defining Gulp tasks and using Gulp plugins.
Click here to learn more. https://go.microsoft.com/fwlink/?LinkId=518007
*/

var cave = require('cave');
var cheerio = require('cheerio');
var CleanCSS = require('clean-css');
var fs = require('fs');
var gulp = require('gulp');
var concat = require('gulp-concat');
var inline = require('gulp-inline-fonts');
var merge = require('merge-stream');
var normalizeNewline = require('normalize-newline');
var path = require('path');
var penthouse = require('penthouse');
var svgstore = require('gulp-svgstore');
var svgmin = require('gulp-svgmin');
var through2 = require('through2');
var ttf2woff = require('gulp-ttf2woff');
var ttf2woff2 = require('gulp-ttf2woff2');
var Vinyl = require('vinyl');

gulp.task('inlinefonts', function () {
    const FONTS = {
        'Libre Baskerville': [400, 700]
    };

    var woffStream = merge(),
        woff2Stream = merge();

    Object.keys(FONTS).forEach(function (family) {
        FONTS[family].forEach(function (weight) {
            woffStream.add(gulp.src(`assets/fonts/${family}/${weight}.ttf`)
                .pipe(ttf2woff())
                .pipe(inline({ name: `${family}`, weight: weight, formats: ['woff'] })));

            woff2Stream.add(gulp.src(`assets/fonts/${family}/${weight}.ttf`)
                .pipe(ttf2woff2())
                .pipe(inline({ name: `${family}`, weight: weight, formats: ['woff2'] })));
        });
    });

    woffStream.pipe(concat('woff.css')).pipe(gulp.dest('assets/fonts'));
    woff2Stream.pipe(concat('woff2.css')).pipe(gulp.dest('assets/fonts'));
});

gulp.task('svgsprites', function () {
    return gulp
        .src('assets/images/sprites/src/*.svg', { base: 'assets/images/sprites/src/sprites' })
        .pipe(svgmin(function (file) {
            var prefix = path.basename(file.relative, path.extname(file.relative));
            return {
                plugins: [{
                    cleanupIDs: {
                        prefix: prefix,
                        minify: true,
                    }
                }]
            };
        }))
        .pipe(svgstore())
        .pipe(through2.obj(function (file, encoding, cb) {
            var $ = cheerio.load(file.contents.toString(), { xmlMode: true });
            var data = $('svg > symbol').map(function () {
                return {
                    name: $(this).attr('id'),
                    viewBox: $(this).attr('viewBox')
                };
            }).get();
            var jsonFile = new Vinyl({
                path: 'sprites.json',
                contents: new Buffer(JSON.stringify(data))
            });
            this.push(jsonFile);
            this.push(file);
            cb();
        }))
        .pipe(gulp.dest('assets/images/sprites/'));
});

gulp.task('criticalpathcss', function () {
    const URLs = {
        'homepage': 'http://notspaces.azurewebsites.net/',
        'projects': 'http://notspaces.azurewebsites.net/hospitality/',
        'project': 'http://notspaces.azurewebsites.net/hospitality/hotel-adele/'
    };

    Object.keys(URLs).forEach(function (pageType) {
        var stylesheet = `assets/sass/site.min.css`;
        var baseDir = `css/${pageType}`;

        if (!fs.existsSync(baseDir)) {
            fs.mkdirSync(baseDir);
        }

        penthouse({
            url: URLs[pageType],
            css: stylesheet,
            width: 0,
            height: 0,
            forceInclude: [
                '.lazyloaded',
                '.loader.is-loading', '.loader.is-loading:before', '.loader.is-loaded', '.loader.is-loaded:before', '.loader.is-disabled'
            ],
            keepLargerMediaQueries: true,
            propertiesToRemove: [ ],
        })
            .then(criticalCss => {
                fs.writeFileSync(`${baseDir}/abovethefold.min.css`, criticalCss);

                let diff = normalizeNewline(cave(stylesheet, { css: criticalCss }));
                diff = new CleanCSS().minify(diff).styles;

                fs.writeFileSync(`${baseDir}/main.min.css`, diff);
            });
    });


});