'use strict';

angular.module('wtApp.tournament', [
  'ngRoute',
  'wtApp.tournament.newTournament',
])

.controller('TournamentCtrl', [function() {

}])

.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/tournament', {
    templateUrl: 'tournament/tournament.html',
    controller: 'TournamentCtrl'
  });
}]);
