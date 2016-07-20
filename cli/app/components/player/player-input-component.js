"use strict";
var PlayerInputController = [

  function () {
    var ctrl = this;

    ctrl.textUpdate = function (text) {
      var names = text.split("\n");
      ctrl.player = names.pop();
      angular.forEach(names, function (name) {
        save(name);
      });
    };

    ctrl.add = function (name) {
      ctrl.player = '';
      save(name);
    };

    function save(name) {
      if (name !== '') {
        ctrl.send({
          name: name
        });
      }
    }

  }
];

angular.module('wtApp.player.input', [])

.component('playerInput', {
  templateUrl: 'components/player/player-input.html',
  controller: PlayerInputController,
  bindings: {
    send: "&onSeparator"
  }
});