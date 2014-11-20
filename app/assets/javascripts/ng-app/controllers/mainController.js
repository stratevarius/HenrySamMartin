angular.module('app')

  .controller('mainController', function($scope, api) {

  $scope.test = "TEST TEST TEST";

  api.getExecutives()
  .then(function(data){
    // console.log(data.data[0].image);
    $scope.executives = data.data;
  });

  $scope.createExecutive = function(){

    api.createExecutive(e){
		username, 
	 	password_digest, 
		strat_exec_constituent_type,  (do blank field for now, but we’ll give you a drop down to link to later)
		prefix, 
		firstname, 
		lastname, 
		suffix, 
		email, 
		mobile_tel, 
		mobile_carrier, 
		office_tel, 
		social_twitter, 
		social_linkedin, 
		social_blog, 
		is_verified_by_staff, 
		is_verified_by_thirdparty, 
		exec_comments_on_self, 
		is_user
	});

  };  

});