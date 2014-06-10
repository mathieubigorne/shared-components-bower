angular.module('xl.samples', [])
    .filter('shuffleCase', [function () {
        return function (inputText) {
            var output = "";
            for (var i = 0; i < inputText.length; i++) {
                if (i % 2 === 0) {
                    output += inputText.charAt(i).toUpperCase();
                } else {
                    output += inputText.charAt(i).toLowerCase();
                }
            }
            return output;
        };
    }])
    .directive('externalLink', [function () {
        return {
            templateUrl: 'samples/link.html',
            restrict: 'A',
            transclude: true,
            scope: {
                link: '@'
            }
        };
    }]);
