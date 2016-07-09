function NewTournamentController($scope, $element, $attrs) {

  var ctrl = this;

}

angular.module('wtApp.tournament.newTournament', [
  'wtApp.tournament.formTournament'
])

.component('newTournament', {
  templateUrl: 'components/tournament/new-tournament.html',
  controller: NewTournamentController,
});