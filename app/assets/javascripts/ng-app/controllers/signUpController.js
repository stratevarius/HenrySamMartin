angular.module('app')

  .controller('signUpController', function($scope){

  	$scope.showId = function() {
			console.log($stateParams.id);
		};

});