angular.module("usermodule").controller("userctrl", function($scope, UserService){
    $scope.users = [];
    $scope.username = "";
    $scope.address ="";
    $scope.email ="";


    $scope.getAllusers = function(){
        UserService.fetchAllUsers()
        .then(
              function(success){
                $scope.users = success.data;
                console.log(success);
              },
              function(error){
                console.log(error)
              }
         );
    }

    $scope.creatuser = function(){
        var user ={};
        user.id = "";
        user.username = $scope.username;
        user.address = $scope.address;
        user.email = $scope.email;
        console.log(user);
        UserService.createUser(user)
                .then(
                      function(success){
                        console.log("success");
                        $scope.users.push(user);
                      },
                      function(error){
                        console.log("error");
                      }
                 );
    }

});