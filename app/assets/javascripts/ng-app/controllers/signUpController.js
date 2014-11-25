

angular.module('app')

  .controller('signUpController', function ($scope, api){
    
    $scope.submitRecord = function(){
      api.createExecutiveRecord($scope.user_prefix,$scope.first_name, $scope.last_name, $scope.user_suffix, $scope.user_email, $scope.username, $scope.password, $scope.password_confirmation );
      api.createOrganizationRecord($scope.org_name, $scope.address, $scope.city, $scope.state, $scope.zip, $scope.sector );
       window.location = '#/main';

    };

});