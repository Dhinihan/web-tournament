var NewTournamentController = ['$location', function($location) {

  var ctrl = this;

  ctrl.created = function(tournament){
    $location.path('/tournament/' + tournament.id + '/player');
  }


}]

angular.module('wtApp.tournament.newTournament', [
  'wtApp.tournament.formTournament'
])

.component('newTournament', {
  templateUrl: 'components/tournament/new-tournament.html',
  controller: NewTournamentController,
});
