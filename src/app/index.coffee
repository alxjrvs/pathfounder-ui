angular.module "pathfounderUi", ['ngAnimate', 'ngCookies', 'ngTouch', 'ngSanitize', 'ui.router', 'mm.foundation', 'youtube-embed']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/welcome/welcome.html",
        controller: "WelcomeController"

    $urlRouterProvider.otherwise '/'

