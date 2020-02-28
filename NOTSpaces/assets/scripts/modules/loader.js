var hasLoaderToBeDisabled = false;

$(document).ready(function ()
{
    var cookie = $.cookie('wearenot_hasbeenvisited');
    hasLoaderToBeDisabled = cookie === undefined ? false : Boolean(cookie);

    if (hasLoaderToBeDisabled === true)
    {
        $('[data-loader]').addClass('is-disabled');
    }
    else
    {
        setTimeout(function ()
        {
            $('[data-loader]').addClass('is-loading');
        }, 75);
    }
});

$(window).on('load', function ()
{
    if (hasLoaderToBeDisabled === false)
    {
        setTimeout(function ()
        {
            $('[data-loader]').addClass('is-loaded');
        }, 575);

        $.cookie('wearenot_hasbeenvisited', true);
    }
});