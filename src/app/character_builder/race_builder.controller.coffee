angular.module("pathfounderUi.characterBuilder").controller "RaceBuilderController", [
  "$scope"
  "$state"
  "$stateParams"
  "CharacterService"
  ($scope, $state, $stateParams, CharacterService) ->
    CharacterService.get($stateParams.id).then (data)->
      $scope.character = data.character
]

