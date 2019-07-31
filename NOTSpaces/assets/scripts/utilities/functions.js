function testResolution(type, breakpoint) {
    var result = window.matchMedia("screen and (" + type + "-width:" + breakpoint + "px)");
    return (result.matches) ? true : false;
}

function drawMap(lat, lng, id) {
    var location = new google.maps.LatLng(lat, lng),
        options = {
        zoom: 14,
        center: new google.maps.LatLng(lat, lng),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        scrollwheel: false,
        mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
            position: google.maps.ControlPosition.RIGHT_BOTTOM
        },
        zoomControlOptions: {
            style: google.maps.ZoomControlStyle.SMALL,
            position: google.maps.ControlPosition.LEFT_BOTTOM
        }
    };

    var map = new google.maps.Map(document.getElementById(id), options);

    var marker = new google.maps.Marker({
        map: map,
        position: location,
    });
}

function initFluidMedias() {
    $('.multimedia--video').each(function () {
        var $localVideo = $(this).find('video');
        var $iFrame = $(this).find('iframe');

        if (!$localVideo.length && !$iFrame.length) {
            return;
        }

        var $video = $localVideo.length ? $localVideo : $iFrame;

        var width,
            height;

        var parentH = $video.parent().outerHeight();
        var parentW = $video.parent().outerWidth();

        var parentRatio = parentW / parentH;
        var ratio = parseFloat($video.data('ratio'), 10) || 1.777777777777778;

        if (parentRatio > ratio) {
            width = parentW + 20;
            height = parentW / ratio;
        } else {
            height = parentH + 20;
            width = parentH * ratio;
        }

        $video.css({
            'height': height,
            'width': width
        });

        if ($localVideo.length) {
            var data_src = $video.find('source').attr('data-src');
            var src = $video.find('source').attr('src');

            if (src === '') {
                if (data_src !== '') {
                    $video.find('source').attr('src', data_src);
                }

                $video[0].load();
                $video[0].play();
            }
        }
    });
}