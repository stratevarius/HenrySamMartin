angular.module('app')

.controller('executiveController', function ($scope, api){

  var exec_endpoint = 'api/executives';

  api.fetchAll(exec_endpoint)
  .then(function(data){
    // console.log(data.data[0].image);
    $scope.executives = data.data;
  });

  // $scope.createExecutive = function(){

  //   api.createExecutive(
  // $scope.Username, 
  // $scope.Password_digest, 
  // $scope.Strat_exec_constituent_type,
  // $scope.Prefix, 
  // $scope.Firstname, 
  // $scope.Lastname, 
  // $scope.Suffix, 
  // $scope.Email, 
  // $scope.Mobile_tel, 
  // $scope.Mobile_carrier, 
  // $scope.Office_tel, 
  // $scope.Social_twitter, 
  // $scope.Social_linkedin, 
  // $scope.Social_blog, 
  // $scope.Is_verified_by_staff, 
  // $scope.Is_verified_by_thirdparty, 
  // $scope.Exec_comments_on_self, 
  // $scope.Is_user
  // );

  // };  




});