$(window).resize(function () {
    isMobile = testResolution("max", mq.mobile);
    isTablet = testResolution("max", mq.tablet_wide);
    isTouch = ('ontouchstart' in window || navigator.msMaxTouchPoints);
}).resize();