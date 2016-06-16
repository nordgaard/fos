(function () {
  "use strict";
  angular.module("app").controller("locationCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/locations.json').then(function(response) {
        $scope.locations = response.data;
      });
    }
  $scope.addLocation = function(name) {
    var location = {name: name}
    $http.post('api/v1/locations.json', location).then(function(response) {
      $scope.locations.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    }

    window.$scope = $scope;
  });
})(); 