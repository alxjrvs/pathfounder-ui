class CharacterService
  Character = null

  @$inject: ["$http", "$rootScope", "Restangular"]
  constructor: (@$http, @$rootScope, @Restangular) ->
    Character = @Restangular.all('characters')
      #.addResponseInterceptor (data, operation, what) ->
        #newData = data["character"]
        #newData.metadata = data.metadata
        #return newData

  character: ->
    @_character ?= generateNewCharacter()

  generateNewCharacter = ->
    post = Character.post
      character:
        name: ""
    return post.$object

angular.module("pathfounderUi").service "CharacterService", CharacterService
