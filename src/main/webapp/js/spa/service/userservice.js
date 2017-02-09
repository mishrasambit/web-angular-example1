angular.module("spamodule").factory("UserService",['$http',function(restcall){

    var REST_SERVICE_ENDPOINT = "http://localhost:8080";

    var factory = {
            fetchAllUsers: fetchAllUsers,
            createUser:createUser,
            fetchUserById:fetchUserById
    }

    function fetchAllUsers(){
        /*return restcall({
    		 method : 'GET',
    		 url : REST_SERVICE_ENDPOINT+"/user/"
    	 });*/
        return restcall.get(REST_SERVICE_ENDPOINT+"/user/");
    }

    function createUser(user){
        return restcall({
             method : 'POST',
             url : REST_SERVICE_ENDPOINT+"/user/",
             data: user
        });
        //return restcall.POST(REST_SERVICE_ENDPOINT+"/user/");
    }

    function fetchUserById(userid){

        /*return restcall({
             method : 'GET',
             url : REST_SERVICE_ENDPOINT+"/user/"+userid
        });*/
        return restcall.get(REST_SERVICE_ENDPOINT+"/user/"+userid);
    }

    return factory;
}]);