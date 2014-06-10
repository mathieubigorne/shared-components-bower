angular.module('xl.templates', []).run(['$templateCache', function($templateCache) {
  'use strict';

  $templateCache.put('samples/link.html',
    "<a ng-href=\"{{ link }}\" target=\"_blank\" ng-transclude></a>"
  );

}]);
