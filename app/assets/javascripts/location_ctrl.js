(function () {
  "use strict";
  angular.module("app").controller("locationCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/locations.json').then(function(response) {
        $scope.locations = response.data;
      });
    }    

    $scope.filterColumn = "name";

    $scope.changeFilter = function(name) {
      $scope.filterColumn = name;
    }


    window.$scope = $scope;
  });
})(); 