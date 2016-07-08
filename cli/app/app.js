'use strict';

// Declare app level module which depends on views, and components
angular.module('wtApp', [
  'ngRoute',
  'wtApp.view1',
  'wtApp.view2',
  'wtApp.version',
  'wtApp.menu',
  'ngAnimate', 
  'ui.bootstrap'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');
  $routeProvider.otherwise({redirectTo: '/view1'});
}]);
