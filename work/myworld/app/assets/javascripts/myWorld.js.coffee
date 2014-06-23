#= require_self
#= require_tree ./directives/main
#= require_tree ./filters/main

#= require_tree ./controllers/novel

app = angular.module('app',['ngRoute'])
app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/', { templateUrl: '../assets/novel.html.haml', controller: 'NovelCtrl' } )

])