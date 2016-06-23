(function () {
  "use strict";
  angular.module("app").controller("userCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/users.json').then(function(response) {
        $scope.users = response.data;
      });
    }    

    $scope.filterColumn = "name";

    $scope.changeFilter = function(name) {
      $scope.filterColumn = name;
    }


    window.$scope = $scope;
  });
})(); 