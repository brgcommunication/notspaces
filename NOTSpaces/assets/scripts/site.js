$(document).on('lazyloaded', function (e) {
    var self = e.target;

    if ($(self).parents('.employees').length > 0) {

        $(self).parents('.employees').find('.employees__letter').addClass('is-visible');

        $(window).resize(function () {

            if (tween && scene) {
                scene.destroy(true);
                TweenMax.killAll();
                TweenMax.set((elements, { clearProps: "all" }));
            }

            var controller = new ScrollMagic.Controller();

            var top;
            var offset;
            var duration;

            if (isMobile) {
                top = 130;
                offset = -150;
                duration = 500;
            } else if (isTablet) {
                top = 250;
                offset = -150;
                duration = 500;
            } else {
                top = 300;
                offset = -300;
                duration = 1000;
            }

            tween = TweenMax.to(elements, duration, { top: "-=" + top, ease: Linear.easeOut });

            scene = new ScrollMagic.Scene({ triggerElement: "#weare", offset: offset, duration: duration })
                .setTween(tween)
                .addTo(controller);

        }).resize();
    }

});

$(document).ready(function () {
    $('[data-navbar]').navbar();

    $('[data-portlet="tabs"]').portlet();

    $('[data-slider]').each(function () {
        var $this = $(this);

        var slides_to_show = $this.data('slides-to-show');
        var slides_to_scroll = $this.data('slides-to-scroll');
        var slide_mode = $this.data('slide-mode');
        var slide_speed = $this.data('slide-speed') || 5000;
        var hasDots = ($this.data('dots') ? true : false) && $this.find('.slider__slide').length > 1;

        $this.slick({
            arrows: $this.data('arrows') ? true : false,
            prevArrow: '<a href="javascript:;" class="slider__arrow slider__arrow--prev"><svg viewBox="0 0 24 24" width="100%" height="100%"><path d="M15.41 16.09l-4.58-4.59 4.58-4.59L14 5.5l-6 6 6 6z"></path><path d="M0-.5h24v24H0z" fill="none"></path></svg></a>',
            nextArrow: '<a href="javascript:;" class="slider__arrow slider__arrow--next"><svg viewBox="0 0 24 24" width="100%" height="100%"><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z"></path><path d="M0-.25h24v24H0z" fill="none"></path></svg></a>',
            dots: hasDots,
            dotsClass: 'slider__dots',
            autoplay: true,
            autoplaySpeed: slide_speed,
            centerMode: $this.data('centered-mode') ? true : false,
            cssEase: 'linear',
            infinite: true,
            fade: slides_to_show === undefined ? true : false,
            slidesToShow: slides_to_show !== undefined ? slides_to_show.xl : 1,
            slidesToScroll: slides_to_scroll !== undefined ? slides_to_scroll.xl : 1,
            vertical: slide_mode !== undefined ? slide_mode.xl : false,
            responsive: [
                {
                    breakpoint: 1679,
                    settings: {
                        fade: slides_to_show === undefined ? true : false,
                        slidesToShow: slides_to_show !== undefined ? slides_to_show.lg : 1,
                        slidesToScroll: slides_to_scroll !== undefined ? slides_to_scroll.lg : 1,
                        vertical: slide_mode !== undefined ? slide_mode.lg : false
                    }
                },
                {
                    breakpoint: 1359,
                    settings: {
                        fade: slides_to_show === undefined ? true : false,
                        slidesToShow: slides_to_show !== undefined ? slides_to_show.md : 1,
                        slidesToScroll: slides_to_scroll !== undefined ? slides_to_scroll.md : 1,
                        vertical: slide_mode !== undefined ? slide_mode.md : false
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        fade: slides_to_show === undefined ? true : false,
                        slidesToShow: slides_to_show !== undefined ? slides_to_show.sm : 1,
                        slidesToScroll: slides_to_scroll !== undefined ? slides_to_scroll.sm : 1,
                        vertical: slide_mode !== undefined ? slide_mode.sm : false
                    }
                }
            ]
        });
    });

    $('[data-anchor]').click(function (event) {
        if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');

            $('body').removeClass('is-not-scrollable');
            $('[data-navbar]').find('.navbar__navigation').removeClass('is-active');
            $('.hamburger').removeClass('is-active');

            if (target.length) {
                event.preventDefault();

                $('html, body').animate({
                    scrollTop: target.offset().top
                }, 1000, function () {
                    var $target = $(target);
                    $target.focus();

                    if ($target.is(":focus")) {
                        return false;
                    } else {
                        $target.attr('tabindex', '-1');
                        $target.focus();
                    }
                });
            } else {
                setTimeout(function ()
                {
                    document.location.href = "/" + document.location.hash;
                }, 500);

            }
        }
    });

    $(window).resize(function () {
        initFluidMedias();
    }).resize();
});

$(window).on('load', function () {

});