class CharacterService
  Character = null

  @$inject: ["CharacterWrapper"]
  constructor: (@CharacterWrapper) ->
    Character = @CharacterWrapper

  new: (params) ->
    promise = Character.create(params)
    promise.then (data) =>
      id = data.character.id
      @character = data
    return promise

  get: (id) ->
    promise = Character.find(id)
    promise.then (data) =>
      @character = data
    return promise

  save: (data) ->
    if @character
      copy = Character.copy @character
      copy.character = data
      promise = copy.save(copy.character.id)
      promise.then (data) =>
        @character = data
      return promise
    else
      return Character.object(id)

angular.module("pathfounderUi").service "CharacterService", CharacterService
