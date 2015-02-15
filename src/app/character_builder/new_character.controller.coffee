angular.module("pathfounderUi.characterBuilder").controller "NewCharacterController", [
  "$scope"
  "$state"
  "CharacterService"
  ($scope, $state, CharacterService) ->
    $scope.character = CharacterService.character()

    $scope.toRace = ->
      $state.go 'character_builder.race', id: CharacterService.character().id
]

