angular.module "pathfounderUi.characterBuilder", []
angular.module "pathfounderUi", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ui.router', 'mm.foundation', 'youtube-embed', 'restangular', "pathfounderUi.characterBuilder"]
  .config (RestangularProvider) ->
    RestangularProvider.setBaseUrl 'http://localhost:3000/api/v1'
    RestangularProvider.setDefaultHttpFields withCredentials: true
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/welcome/welcome.html",
      .state "character_builder",
        url: "/character_builder",
        templateUrl: "app/character_builder/character_builder.html",
      .state "character_builder.new",
        url: "/new"
        templateUrl: "app/character_builder/new.html"
      .state "character_builder.race",
        url: "/character_builder/:id/race",
        templateUrl: "app/character_builder/race.html"

    $urlRouterProvider.otherwise '/'

