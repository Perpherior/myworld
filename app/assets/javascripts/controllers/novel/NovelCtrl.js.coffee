@NovelCtrl = ($scope, $location ,$http) ->
  $scope.title = "My Books"
  $scope.data =
    novels: [{title: 'Loading novels...', author: ''}]

  loadNovels = ->
    $http.get('/my_favorites/novels.json').success((data) ->
      $scope.data.novels = data
      console.log('Successful load')
    ).error( ->
     console.log('Fail to load')
    )

  loadNovels()


  $scope.viewNovel = (novelId) ->
    $location.url('/my_favoriates/novels'+novelId)