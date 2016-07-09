function FormTournamentController($scope, $element, $attrs) {

  var ctrl = this;

}

angular.module('wtApp.tournament.formTournament', [
  'wtApp.tournament.selectTournamentType'
])

.component('formTournament', {
  templateUrl: 'components/tournament/form-tournament.html',
  controller: FormTournamentController,
  binding: {
    create: '&onSend'
  }
});