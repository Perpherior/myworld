#= require_self
#= require_tree ./controllers/novel

app = angular.module('app',['ngRoute'])
app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/', { templateUrl: '../assets/novel.html.haml', controller: 'NovelCtrl' } )

])