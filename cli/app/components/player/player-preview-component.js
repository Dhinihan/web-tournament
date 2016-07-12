var PlayerPreviewController = [function() {

  var ctrl = this;

}]

angular.module('wtApp.player.preview', [])

.component('playerPreview', {
  templateUrl: 'components/player/player-preview.html',
  controller: PlayerPreviewController,
  bindings: {
    players: "<"
  }
});
