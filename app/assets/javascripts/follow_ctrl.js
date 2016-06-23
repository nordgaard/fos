(function () {
  "use strict";
  angular.module("app").controller("followCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/follows.json').then(function(response) {
        $scope.follows = response.data;
      });
    }

    $scope.filterColumn = "name";

    $scope.changeFilter = function(name) {
      $scope.filterColumn = name;
    }

    var follow = angular.module('app',[]);

    app.service('dataService', function($http) {
    delete $http.defaults.headers.common['X-Requested-With'];
      this.getData = function(callbackFunc) {
        $http({
            method: 'POST',
            url: 'https://follows/api/v1/page',
        });

      }
    });


    window.$scope = $scope;
  });
})(); 