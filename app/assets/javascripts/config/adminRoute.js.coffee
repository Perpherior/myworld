app = angular.module('myWorldApp')
app.config ($routeProvider) ->
  $routeProvider
    .when( '/admins/edit',
      { templateUrl: '/assets/admins/edit.html.haml', controller: 'AdminCtrl' })