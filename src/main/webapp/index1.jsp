<html>
  <head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <link rel="stylesheet" type="text/css" href="css/lib/bootstrap.min.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/bootstrap-theme.min.css">
    <style>
          .username.ng-valid {
              background-color: lightgreen;
          }
          .username.ng-dirty.ng-invalid-required {
              background-color: red;
          }
          .username.ng-dirty.ng-invalid-minlength {
              background-color: yellow;
          }

          .email.ng-valid {
              background-color: lightgreen;
          }
          .email.ng-dirty.ng-invalid-required {
              background-color: red;
          }
          .email.ng-dirty.ng-invalid-email {
              background-color: yellow;
          }
    </style>
  </head>
  <body ng-app="usermodule" class="ng-cloak">
      <div class="generic-container" ng-controller="userctrl" ng-init="getAllusers()">
            <form ng-submit="creatuser()" name="myForm" class="form-horizontal">
                <input type="text" ng-model="username"/>
                <input type="text" ng-model="address"/>
                <input type="text" ng-model="email"/>
                <input type="submit" value="create"/>
            </form>

          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Users </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>ID.</th>
                              <th>Name</th>
                              <th>Address</th>
                              <th>Email</th>
                              <th width="20%"></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in users">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.username"></span></td>
                              <td><span ng-bind="u.address"></span></td>
                              <td><span ng-bind="u.email"></span></td>
                              <td>
                              <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>  <button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>

      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>

      <script src="js/app/myapp.js"></script>
      <script src="js/app/userservice.js"></script>
      <script src="js/app/userapp.js"></script>
      <script src="js/app/userctrl.js"></script>

  </body>
</html>