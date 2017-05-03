var mdapp = angular.module("mdapp",['ngMaterial','ngAnimate','ngAria','ngMessages']);

mdapp.controller("materialController",
    function($scope,$rootScope ){
      $scope.showLeftSidenav = false;
      $scope.toggleLeftSidenav = function(){
        $scope.showLeftSidenav = !$scope.showLeftSidenav;
      };
    }
);