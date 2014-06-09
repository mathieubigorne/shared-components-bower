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
            template: '<a ng-href="{{ link }}" target="_blank" ng-transclude></a>',
            restrict: 'A',
            transclude: true, 
            scope: {
                link: '@'
            }
        };
    }]);
