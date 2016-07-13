'use strict';

// Declare app level module which depends on views, and components
angular.module('wtApp', [
  'ngAnimate', 
  'ngRoute',
  'oitozero.ngSweetAlert',
  'picardy.fontawesome',
  'ui.bootstrap',
  'wtApp.data',
  'wtApp.form',
  'wtApp.home',
  'wtApp.menu',
  'wtApp.player',
  'wtApp.tournament',
  'wtApp.version',
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');
  $routeProvider
    .otherwise({redirectTo: '/home'});
}])
.constant('API_URL', 'http://localhost:3000/')
;
