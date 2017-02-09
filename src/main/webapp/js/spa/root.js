var spamodule = angular.module("spamodule",['ngRoute']);

spamodule.config(function($routeProvider){
    $routeProvider
    .when('/personlist',{
        templateUrl : 'js/spa/template/personlist.html',
        controller : 'personlistController'
    })
    .when('/createperson',{
        templateUrl : 'js/spa/template/createperson.html'
    })
    .when('/showperson/:userid',{
        templateUrl : 'js/spa/template/showperson.html'
    })
});