angular.module "pathfounderUi"
  .controller "YoutubeBackgroundController", ($scope) ->
    $scope.videoId = "3buuXcHOBkI"
    $scope.playerVars =
      controls: 0
      autoplay: 1
      showinfo: 0
      autohide: 1
      start: 4
      end: 70
      iv_load_policy: 3

    $scope.$on 'youtube.player.ended', ($event, player) ->
      player.seekTo(4)
      player.playVideo()

    $scope.$on 'youtube.player.ready', ($event, player) ->
      player.mute()


