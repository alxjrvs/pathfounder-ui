angular.module("pathfounderUi.characterBuilder").controller "NewCharacterController", [
  "$scope"
  "$state"
  "CharacterService"
  ($scope, $state, CharacterService) ->
    $scope.toRace = ->
      CharacterService.new(name: $scope.character.name).then (data) ->
        $state.go 'character_builder.race', id: data.id

]

