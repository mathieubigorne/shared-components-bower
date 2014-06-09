angular.module('xl.filters', [])
    .filter('sample', [function () {
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
        }
    }])
