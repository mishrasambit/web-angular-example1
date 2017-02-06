<html>
<head >
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Basic Bootstrap Template</title>
    <link rel="stylesheet" type="text/css" href="css/lib/bootstrap.min.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/bootstrap-theme.min.css">
</head>
<body ng-app="firstmodule">
    <div ng-controller="firstcontroller" ng-init="getallusers()">
    <input type="button" value="show the name from rootscope" ng-click="showfirstname()"/>
    <input type="button" value="show the name from service" ng-click="showfromservice()"/>
    <h1>{{name}}</h1>
    </div>

    <div ng-controller="secondcontroller">
        <ul ng-repeat="person in people | orderBy:'name'">
            <li ><span ng-bind="person.name | uppercase"></span> <span ng-bind="person.age | currency "></span></li>
        </ul>
    </div>

    <div showmsg></div>

    <div ng-controller="secondcontroller">
        <div showpersonlist="people"></div>
    </div>

    <div ng-controller="thirdctrl">
        <input type="text" ng-model="firstname"/>
        <input type="button" value="show in firstcontroller" ng-click="showfirstname()"/>
        <input type="button" value="set in thirdctrl" ng-click="setfirstname()"/>
    </div>

    <script src="js/lib/jquery-2.1.3.min.js"></script>
    <script src="js/lib/bootstrap.min.js"></script>
    <script src="js/lib/angular.min.js"></script>
    <script src="js/app/myapp.js"></script>
    <script src="js/app/userservice.js"></script>
</body>
</html>
