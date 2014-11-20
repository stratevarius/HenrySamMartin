angular.module('app')

.config(function ($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise('/main');

    $stateProvider

      .state('main', {
          url: '/main',
          templateUrl: 'main.html',
          controller: 'mainController'
      })
      .state('signin', {
          url: '/signin',
          templateUrl: 'signin.html',
          controller: 'signInController'
      })
      .state('signup', {
          url: '/signup',
          templateUrl: 'signup.html',
          controller: 'signUpController'
      });
        

});