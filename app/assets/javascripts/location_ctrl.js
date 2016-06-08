(function () {
  "use strict";
  angular.module("app").controller("locationCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/locations.json').then(function(response) {
        $scope.locations = response.data;
      });
    }
    $scope.toggleOrder = function(attribute) {
      if(attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }
      $scope.orderAttribute = attribute;
    }

    window.$scope = $scope;
  });
})(); 