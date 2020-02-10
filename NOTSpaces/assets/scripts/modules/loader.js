$(document).ready(function () {
    setTimeout(function () {
        $('[data-loader]').addClass('is-loading');
    }, 75);
});

$(window).on('load', function () {
    setTimeout(function () {
        $('[data-loader]').addClass('is-loaded');
    }, 575);
});