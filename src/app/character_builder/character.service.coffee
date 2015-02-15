class CharacterService
  Character = null

  @$inject: ["$http", "$rootScope", "CharacterWrapper"] 
  constructor: (@$http, @$rootScope, @CharacterWrapper) ->
    Character = @CharacterWrapper

  character: ->
    @_character ?= Character.create()

angular.module("pathfounderUi").service "CharacterService", CharacterService
