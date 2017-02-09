angular.module('spamodule').controller('showPersonController',['$scope','UserService','$routeParams',
function($scope, UserService, $routeParams){
    var self = this;
    self.user ={};

    self.userid = $routeParams.userid;

    self.showPerson = function(){
        UserService.fetchUserById(self.userid)
            .then(
                  function(success){
                    console.log("success");
                    console.log(success.data);
                    self.user =  success.data
                  },
                  function(error){
                    console.log("error");
                  }
            );
    }

}]);
