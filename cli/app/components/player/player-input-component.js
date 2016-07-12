var PlayerInputController = ['$location', function($location) {

  var ctrl = this;

  ctrl.textUpdate = function(text) {
    var names = text.split("\n");
    ctrl.players = names.pop();
    angular.forEach(names, function(name) {
      if(name != '')
        ctrl.send({ name: name })
    });
  }

}]

angular.module('wtApp.player.input', [])

.component('playerInput', {
  templateUrl: 'components/player/player-input.html',
  controller: PlayerInputController,
  bindings: {
    send: "&onSeparator"
  }
});
