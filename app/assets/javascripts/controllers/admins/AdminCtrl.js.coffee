app = angular.module('myWorldApp')
app.controller 'AdminCtrl', ($scope,$http, adminService) ->
  init = ->
    $scope.title = "Edit Profile"
    getAdmin()
    

  getAdmin = ->
    adminService.getAdmin().then (data)->
      $scope.admin = data

  init()