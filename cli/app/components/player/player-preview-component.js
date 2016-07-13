var PlayerPreviewController = [function() {

  var ctrl = this;

  ctrl.remove = function(index) {
    ctrl.players.splice(index, 1);
  }

}]

angular.module('wtApp.player.preview', [])

.component('playerPreview', {
  templateUrl: 'components/player/player-preview.html',
  controller: PlayerPreviewController,
  bindings: {
    players: "<"
  }
});
