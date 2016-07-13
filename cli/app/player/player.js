'use strict';

angular.module('wtApp.player', [
  'ngRoute',
  'wtApp.player.input',
  'wtApp.player.preview',
])

.controller('PlayerCtrl', ['$scope', 'avoidConflict', function($scope, avoidConflict) {

  $scope.players = [];

  $scope.addPlayer = function(name){
    avoidConflict.add($scope.players, name);
  }

}])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/tournament/:id/player', {
    templateUrl: 'player/player.html',
    controller: 'PlayerCtrl'
  });
}]);