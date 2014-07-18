app = angular.module('myWorldApp')
app.controller 'AddNovelCtrl', ($scope, $location, novelService) ->
  init = ->
    $scope.title = "Add book"

  $scope.addNovel = ->
  	novelService.save($scope.novel)
    .$promise.then ((value) -> 
      console.log 'Successfully Add new book '+$scope.novel.title
      $location.path('/my_favorites/novels/')
    ), (error) -> 
      console.log error
  init()
