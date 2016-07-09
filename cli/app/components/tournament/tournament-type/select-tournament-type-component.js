var SelectTournamentTypeController = [
  '$scope', '$http', 'API_URL',
  function($scope, $http, API_URL) {

  var ctrl = this;

  ctrl.$onInit = function() {
    ctrl.updateModel = function(value) {
      ctrl.ngModel.$setViewValue(value);
    }

    ctrl.updateValue = function () {
      ctrl.typeModel = ctrl.ngModel.$viewValue;
    }

    ctrl.ngModel.$render = ctrl.updateValue;
  }

  $http.get(API_URL + 'tournament_types').then(function(response){
    ctrl.types = response.data
  });

}]

angular.module('wtApp.tournament.selectTournamentType', [])

.component('selectTournamentType', {
  require: {
    ngModel: 'ngModel',
  },
  templateUrl: 'components/tournament/tournament-type/select-tournament-type.html',
  controller: SelectTournamentTypeController,
  binding: {
    create: '&onSelect'
  }
});