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
$(document).ready(function () {
    $('.hamburger').on('click', function () {
        $(this).toggleClass('is-active');
    });
});
/*
 *  jquery-boilerplate - v4.0.0
 *  A jump-start for jQuery plugins development.
 *  http://jqueryboilerplate.com
 *
 *  Made by Zeno Rocha
 *  Under MIT License
 */
// the semi-colon before function invocation is a safety net against concatenated
// scripts and/or other plugins which may not be closed properly.
; (function ($, window, document, undefined) {

    "use strict";

    // undefined is used here as the undefined global variable in ECMAScript 3 is
    // mutable (ie. it can be changed by someone else). undefined isn't really being
    // passed in so we can ensure the value of it is truly undefined. In ES5, undefined
    // can no longer be modified.

    // window and document are passed through as local variable rather than global
    // as this (slightly) quickens the resolution process and can be more efficiently
    // minified (especially when both are regularly referenced in your plugin).

    // Create the defaults once
    var pluginName = "navbar",
        defaults = {
            toggleNavSelector: '.navbar__navigation-toggle',
            navSelector: '.navbar__navigation',
            hasToBeSticky: false,
        };

    // The actual plugin constructor
    function Plugin(element, options) {
        this.element = element;
        this.$element = $(element);

        // jQuery has an extend method which merges the contents of two or
        // more objects, storing the result in the first object. The first object
        // is generally empty as we don't want to alter the default options for
        // future instances of the plugin
        this.settings = $.extend({}, defaults, options);
        this._name = pluginName;
        this.init();
    }

    // Avoid Plugin.prototype conflicts
    $.extend(Plugin.prototype, {
        init: function () {
            var self = this;

            // Place initialization logic here
            // You already have access to the DOM element and
            // the options via the instance, e.g. this.element
            // and this.settings
            // you can add more functions like the one below and
            // call them like the example bellow

            $(this.settings.toggleNavSelector).on('click', function () {
                self.toggleNavigation();
            })

            if (this.settings.hasToBeSticky) {
                $(window).on('scroll', function () {
                    var $w = $(window);
                    var scroll = $w.scrollTop();

                    if (scroll > $w.height()) {
                        self.$element.addClass('is-sticky');
                    } else {
                        if (scroll > $w.height() / 2) {
                            self.$element.addClass('is-disappearing');
                        } else {
                            self.$element.removeClass('is-disappearing');
                        }
                        self.$element.removeClass('is-sticky');
                    }
                });
            }
        },
        toggleNavigation: function () {
            $('body').toggleClass('is-not-scrollable');
            $(this.settings.navSelector).toggleClass('is-active');
        },
    });

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[pluginName] = function (options) {
        return this.each(function () {
            if (!$.data(this, "plugin_" + pluginName)) {
                $.data(this, "plugin_" +
                    pluginName, new Plugin(this, options));
            }
        });
    };

})(jQuery, window, document);
/*
 *  jquery-boilerplate - v4.0.0
 *  A jump-start for jQuery plugins development.
 *  http://jqueryboilerplate.com
 *
 *  Made by Zeno Rocha
 *  Under MIT License
 */
// the semi-colon before function invocation is a safety net against concatenated
// scripts and/or other plugins which may not be closed properly.
; (function ($, window, document, undefined) {

    "use strict";

    // undefined is used here as the undefined global variable in ECMAScript 3 is
    // mutable (ie. it can be changed by someone else). undefined isn't really being
    // passed in so we can ensure the value of it is truly undefined. In ES5, undefined
    // can no longer be modified.

    // window and document are passed through as local variable rather than global
    // as this (slightly) quickens the resolution process and can be more efficiently
    // minified (especially when both are regularly referenced in your plugin).

    // Create the defaults once
    var pluginName = "portlet",
        defaults = {
            toggleTab: '.portlet__tab',
        };

    // The actual plugin constructor
    function Plugin(element, options) {
        this.element = element;
        this.$element = $(element);

        // jQuery has an extend method which merges the contents of two or
        // more objects, storing the result in the first object. The first object
        // is generally empty as we don't want to alter the default options for
        // future instances of the plugin
        this.settings = $.extend({}, defaults, options);
        this._name = pluginName;
        this.init();
    }

    // Avoid Plugin.prototype conflicts
    $.extend(Plugin.prototype, {
        init: function () {
            var self = this;

            // Place initialization logic here
            // You already have access to the DOM element and
            // the options via the instance, e.g. this.element
            // and this.settings
            // you can add more functions like the one below and
            // call them like the example bellow

            $(self.$element.find(self.settings.toggleTab)).on('mouseover', function (e) {
                $(self.$element.find(self.settings.toggleTab)).removeClass('is-active');
                $(this).addClass('is-active');
            });

        },
        updatePortlet: function () {
        },
    });

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[pluginName] = function (options) {
        return this.each(function () {
            if (!$.data(this, "plugin_" + pluginName)) {
                $.data(this, "plugin_" +
                    pluginName, new Plugin(this, options));
            }
        });
    };

})(jQuery, window, document);