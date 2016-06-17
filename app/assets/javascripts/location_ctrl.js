(function () {
  "use strict";
  angular.module("app").controller("locationCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/locations.json').then(function(response) {
        $scope.locations = response.data;
      });
    }    

    window.$scope = $scope;
  });
})(); 