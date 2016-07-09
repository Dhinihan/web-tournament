'use strict';

angular.module('wtApp.home', ['ngRoute'])

.controller('HomeCtrl', [function() {

}])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/home', {
    templateUrl: 'home/home.html',
    controller: 'HomeCtrl'
  });
}]);