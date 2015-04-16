angular.module('myWorldApp')
  .controller 'NovelCtrl', ($scope, $location, novelService) ->
    init = ->
      $scope.title = "My Books"
      loadNovels()
      

    loadNovels = ->
      $scope.novels = novelService.query()

    $scope.showNovel = (id) ->
      $location.path('/my_favorites/novels/'+id)

    $scope.deleteNovel = (idx) ->
      novel_to_delete = $scope.novels[idx]
      novelService.delete({id: novel_to_delete.id})
      .$promise.then ((value) -> 
        console.log 'Successfully delete '+novel_to_delete.title
        $scope.novels.splice idx, 1
      ), (error) -> 
        console.log error

    $scope.addNovel = ->
      $location.path('/my_favorites/novels/add')

    init()
