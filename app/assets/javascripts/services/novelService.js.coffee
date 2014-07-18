app = angular.module('myWorldApp')
app.service 'novelService', ($resource) ->
  $resource '/api/my_favorites/novels/:id.json'