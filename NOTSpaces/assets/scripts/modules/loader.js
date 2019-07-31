$(document).ready(function () {
    setTimeout(function () {
        $('[data-loader]').addClass('is-loading');
    }, 150);
});

$(window).on('load', function () {
    setTimeout(function () {
        $('[data-loader]').addClass('is-loaded');
    }, 1150);
});