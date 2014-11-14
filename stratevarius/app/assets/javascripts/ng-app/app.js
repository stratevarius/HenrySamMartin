var app = angular.module('app', ['ui.router', 'templates'])

.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise('/');

    $stateProvider

      .state('main', {
          url: '/',
          templateUrl: 'main.html',
          controller: 'mainController'
      });
        

})

.controller('mainController', function($scope){
  
  $scope.name = 'I AM DATA';

});