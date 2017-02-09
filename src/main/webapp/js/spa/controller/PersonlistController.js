angular.module('spamodule').controller('personlistController',['$scope','UserService','$location',
function($scope,UserService,$location){
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

    $scope.show = function(id){
        $location.path('/showperson/'+id);
    };

    $scope.createUser = function(){
        $location.path('/createperson');
    }
}]);
