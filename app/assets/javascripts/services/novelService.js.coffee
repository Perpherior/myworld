app = angular.module('myWorldApp')
app.service 'novelService', ($resource) ->
  $resource '/my_favorites/novels/:id.json'