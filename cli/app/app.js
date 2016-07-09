'use strict';

// Declare app level module which depends on views, and components
angular.module('wtApp', [
  'ngRoute',
  'wtApp.home',
  'wtApp.tournament',
  'wtApp.version',
  'wtApp.menu',
  'ngAnimate', 
  'ui.bootstrap'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');
  $routeProvider
    .otherwise({redirectTo: '/home'});
}])
.constant('API_URL', 'http://localhost:3000/')
;
