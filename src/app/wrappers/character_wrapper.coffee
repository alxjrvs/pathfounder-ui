class CharacterWrapper
  wrap = null
  @$inject: ["Restangular"]
  constructor: (@Restangular) ->
    wrap = @Restangular
      .withConfig (RestangularConfigurer)->
        RestangularConfigurer.addResponseInterceptor (data, operation, what) ->
          newData = data["character"]
          newData.metadata = data.metadata
          return newData
    .all "characters"

  create: ->
    post = wrap.post
      character:
        name: ""
    return post.$object

angular.module("pathfounderUi.wrappers").service "CharacterWrapper", CharacterWrapper
