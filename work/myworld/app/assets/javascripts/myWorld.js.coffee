#= require_self
#= require_tree ./controllers/novel
#= require_tree ./directives/novel

novel = angular.module('myworld',[])
novel.filter "greet", ->
  (name) ->
  	"hello, "+ name + " !"
# novel.config (['$routeProvider', ($routeProvider) ->
#    $routeProvider.when('/my_favorites/novels', 
#    	   { templateUrl: '../asset/novel.html.haml', controller: 'NovelCtrl' } )
# 	 ])
