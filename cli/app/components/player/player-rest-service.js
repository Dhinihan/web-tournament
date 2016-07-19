angular.module('wtApp.player.rest', [])

.factory('playerRest', ['$http', 'API_URL', function($http, API_URL) {

  var addCollection = function (players, tournament) {
    var request = {
      players: {
        collection: players,
        tournament_id: tournament
      }
    }
    return $http.post(API_URL + 'players', request);
  }

  return {
    addCollection: addCollection
  }

}]);
