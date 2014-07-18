app = angular.module('myWorldApp')
app.controller 'ShowNovelCtrl', ($scope, novelService, $routeParams) ->
  init = ->
    $scope.title = "My Book"
    showNovel($routeParams.id)

  showNovel = (novelId) ->
    $scope.novel = novelService.get({id: novelId})

  init()



