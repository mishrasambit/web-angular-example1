var app = angular.module("firstmodule",[]);

app.controller("firstcontroller",
    function($scope,$rootScope, firstservice, UserService ){
       $scope.name ="sambit";
       $scope.showfirstname = function(){
            $scope.name = $rootScope.firstname;
       }

       $scope.showfromservice= function(){
           $scope.name = firstservice.greetingmsg();
       }

       $scope.getallusers = function(){
            UserService.fetchAllUsers().then(
                function(success){console.log(success)},
                function(error){console.log(error)}
            );
       }
    }
);

angular.module("firstmodule").controller("secondcontroller",
    function($scope){
        var people = [  {"name":"sambit", "age":29},
                        {"name":"bhanu", "age":29},
                        {"name":"raj", "age":26}
                      ];
        $scope.people = people;
    }
);

angular.module("firstmodule").controller("thirdctrl",
    function($scope, $rootScope, firstservice){
        $scope.showfirstname = function(){
            $rootScope.firstname  = $scope.firstname ;
        }

        $scope.setfirstname = function(){
            firstservice.setFirstnameInLocalStorage($scope.firstname);
        }
    }
);

app.service("firstservice", function(){
    this.setFirstnameInLocalStorage = function (name){
        localStorage.setItem("firstname",name);
    };

    this.greetingmsg = function(){
        return localStorage.getItem("firstname") + ", Goodmorning!";
    };
});

app.directive("showmsg", function(){
    return{
        restrict : "A",
        template : '<h3>Hello Raj!</h3>'
    };
});

app.directive("showpersonlist", function(){
    return{
        scope : {
           people :"=showpersonlist"
        },
        restrict : "EA",
        templateUrl : "template/peoplelist.html"
    };
});

app.directive("showperson", function(){
    return{
        scope : {
           person :"=user"
        },
        restrict : "EA",
        templateUrl : "template/person.html"
    };
});