angular.module('spamodule').controller('createPersonController',['$scope','UserService','$location',
function($scope, UserService, $location){
    var self = this;
    self.username = "";
    self.address ="";
    self.email ="";


    self.creatuser = function(){
        var user ={};
        user.id = "";
        user.username = self.username;
        user.address = self.address;
        user.email = self.email;
        console.log(user);

        UserService.createUser(user)
            .then(
                  function(success){
                    console.log("success");
                    $location.path('/personlist');
                  },
                  function(error){
                    console.log("error");
                  }
            );
    }

    self.reset = function(){
        self.username = "";
        self.address ="";
        self.email ="";
    }
}]);
