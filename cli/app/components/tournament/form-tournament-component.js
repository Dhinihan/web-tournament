function FormTournamentController($scope, $element, $attrs) {

  var ctrl = this;

  ctrl.send = function(tournament) {
    $scope.$broadcast('show-errors-check-validity');
  }

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