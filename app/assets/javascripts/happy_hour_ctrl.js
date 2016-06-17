(function () {
  "use strict";
  angular.module("app").controller("happyHourCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/happy_hours.json').then(function(response) {
        $scope.happy_hours = response.data;
      });
    }
    window.$scope = $scope;
  });
})(); 