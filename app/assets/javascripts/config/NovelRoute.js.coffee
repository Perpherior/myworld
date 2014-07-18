app = angular.module('myWorldApp')
app.config ($routeProvider) ->
  $routeProvider
    .when( '/my_favorites/novels',
      { templateUrl: '/assets/novels/novels.html.haml', controller: 'NovelCtrl' })
    .when( '/my_favorites/novels/add',
      { templateUrl: '/assets/novels/addNovel.html.haml', controller: 'AddNovelCtrl'})
    .when( '/my_favorites/novels/:id',
      { templateUrl: '/assets/novels/novel.html.haml', controller: 'ShowNovelCtrl'})