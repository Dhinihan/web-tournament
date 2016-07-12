var FormTournamentController = [
  '$http', '$scope', 'API_URL', 'SweetAlert',
  function($http, $scope, API_URL, SweetAlert) {

    var ctrl = this;

    ctrl.tournament = { name: null, tournament_type_id: null }

    ctrl.send = function(tournament) {

      if ($scope.tournamentForm.$invalid) {
        return;
      }

      $http.post(API_URL + 'tournaments', {
        tournament: tournament
      }).then(function(response) {
        ctrl.create({tournament: response.data});
      }).catch(function(errors) {
        var text = '';
        angular.forEach(errors.data, function(description, field){
          text += field + ': '
          text += description + "\n"
        });
        SweetAlert.swal("errors", text, "error");
      });
    }

  }
];

angular.module('wtApp.tournament.formTournament', [
  'wtApp.tournament.selectTournamentType'
])

.component('formTournament', {
  templateUrl: 'components/tournament/form-tournament.html',
  controller: FormTournamentController,
  bindings: {
    create: '&onCreate'
  }
});
