app = angular.module('myWorldApp')
app.service 'adminService', ($http) ->
  adminService = {
  	getAdmin : ->
  	  $http {method: 'GET', url: '/api/admins/return_admin.json'}
        .then (result)-> 
          return result.data
  }