

angular.module('app')

  .controller('signUpController', function ($scope, api){

    


    var submitSource = '/api/executives';
        

    
    $scope.submitRecord = function(){
      api.createRecord($scope.user_prefix,$scope.first_name, $scope.last_name, $scope.user_suffix, $scope.user_email, $scope.username, $scope.password, $scope.password_confirmation );
    };







});