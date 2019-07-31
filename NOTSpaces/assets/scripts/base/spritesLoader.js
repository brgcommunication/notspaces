function loadSVGs(file, revision) {
    if (!document.createElementNS || !document.createElementNS('http://www.w3.org/2000/svg', 'svg').createSVGRect)
        return true;

    var isLocalStorage = 'localStorage' in window && window['localStorage'] !== null,
        request,
        data,
        printIT = function () {
            document.getElementById('forbidden').insertAdjacentHTML('afterbegin', data);
        },
        print = function () {
            if (document.getElementById('forbidden')) {
                printIT();
            }
            else {
                document.addEventListener('DOMContentLoaded', printIT);
            }
        };

    if (isLocalStorage && localStorage.getItem('inlineSVGrev') == revision) {
        data = localStorage.getItem('inlineSVGdata');
        if (data) {
            print();
            return true;
        }
    }

    try {
        request = new XMLHttpRequest();
        request.open('GET', file, true);
        request.onload = function () {
            if (request.status >= 200 && request.status < 400) {
                data = request.responseText;
                print();
                if (isLocalStorage) {
                    localStorage.setItem('inlineSVGdata', data);
                    localStorage.setItem('inlineSVGrev', revision);
                }
            }
        }
        request.send();
    }
    catch (e) { }
}