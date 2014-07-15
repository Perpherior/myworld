#= require_self
#= require_tree ./controllers/novel
#= require_tree ./services/novel

app = angular.module('app',['ngRoute'])
app.config(['$routeProvider', '$locationProvider' , ($routeProvider, $locationProvider) ->
  $routeProvider
    .when( '/my_favorites/novels',
      { templateUrl: '../assets/novel.html.haml', controller: 'novelCtrl' })

  #$locationProvider.html5Mode(true) if window.history && window.history.pushState
])