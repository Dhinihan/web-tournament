'use strict';

angular.module('wtApp.player', [
  'ngRoute',
  'wtApp.player.input',
  'wtApp.player.preview',
])

.controller('PlayerCtrl', ['$scope', function($scope) {

  $scope.players = [];

  $scope.addPlayer = function(name){
    $scope.players.push(name)
  }

}])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/tournament/:id/player', {
    templateUrl: 'player/player.html',
    controller: 'PlayerCtrl'
  });
}]);
