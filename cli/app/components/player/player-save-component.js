var PlayerSaveController = ['playerRest', '$routeParams', 'SweetAlert',
  function(playerRest, $routeParams, SweetAlert) {

    var ctrl = this;

    ctrl.save = function() {

      var descricao = ctrl.players.map(function(value) {
        var length = value.length;
        var offset = 3 - length % 30;
        value += ' ' * offset;
        return value;
      })

      SweetAlert.swal({
          title: "Are you sure?",
          text: "You have " +
                ctrl.players.length +
                " players.\n" +
                "The first round will be created with only this players",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#F0AD4E",
          confirmButtonText: "Yes",
          closeOnConfirm: false,
          closeOnCancel: true
        },
        function() {
          playerRest.addCollection(ctrl.players, $routeParams.id).then(function(data) {
            SweetAlert.swal({
              title: "Created!",
              text: "Tournament successfully created!",
              type: "success",
              confirmButtonColor: "#F0AD4E"
            });
          })
        }
      );

    }

  }
]

angular.module('wtApp.player.save', [])

.component('playerSave', {
  templateUrl: 'components/player/player-save.html',
  controller: PlayerSaveController,
  bindings: {
    players: "<"
  }
});
