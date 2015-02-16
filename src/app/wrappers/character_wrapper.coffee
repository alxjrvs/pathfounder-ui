class CharacterWrapper
  api = null

  @$inject: ["Restangular"]
  constructor: (@Restangular) ->
    api = @Restangular
      .withConfig (RestangularConfigurer)->
        RestangularConfigurer.addResponseInterceptor (data) ->
          data.id = data.character.id
          return data

  find: (id) ->
    object(id).get()

  create: (params) ->
    post = collection().post
      character: (params || name: "")
    return post

  copy: (copiable) ->
    return api.copy copiable

  collection = ->
    api.all "characters"

  object = (id) ->
    api.one "characters", id


angular.module("pathfounderUi.wrappers").service "CharacterWrapper", CharacterWrapper
