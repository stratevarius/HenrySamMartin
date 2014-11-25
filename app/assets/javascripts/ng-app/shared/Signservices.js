angular.module('app')

.factory('api', function ($http ){

  return {

    fetchAll: function (source){

      var promise = $http.get(source)                          
      .then(function(response) {
        return response;
      });

      return promise;

    },
    createExecutiveRecord: function( prfx, first, last, sfx, mail){
      // LOOK UP AT POST METHOD IN ANGULAR JS DOC https://docs.angularjs.org/api/ng/service/$http 
      $http.post( '/api/executives', { prefix: prfx  , firstname: first  ,lastname: last, suffix: sfx, email:  mail });
     
    },
    createOrganizationRecord: function( org_name, address, city, state, zip, sector){
      // LOOK UP AT POST METHOD IN ANGULAR JS DOC https://docs.angularjs.org/api/ng/service/$http 
      $http.post( '/api/organizations', { name: org_name  , address_street: address, hq_address_city: city, hq_address_state: state, hq_address_zip: zip, sector_type: sector});
     

    }


  };

});