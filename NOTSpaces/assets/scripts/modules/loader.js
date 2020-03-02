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
        }, 150);
    }
});

$(window).on('load', function ()
{
    if (hasLoaderToBeDisabled === false)
    {
        setTimeout(function ()
        {
            $('[data-loader]').addClass('is-loaded');
        }, 1150);

        $.cookie('wearenot_hasbeenvisited', true);
    }
});