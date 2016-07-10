var FormTournamentController = [
  '$http', '$scope', 'API_URL',
  function($http, $scope, API_URL) {

  var ctrl = this;

  ctrl.send = function(tournament) {

    if ($scope.tournamentForm.$invalid) {
      return;
    }

    $http.post(API_URL + 'tournaments', {
      tournament: tournament
    });
  }

}];

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
