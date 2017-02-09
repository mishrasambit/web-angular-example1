<html>
  <head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <link rel="stylesheet" type="text/css" href="css/lib/bootstrap.min.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/bootstrap-theme.min.css">
    <link rel="stylesheet" href="js/spa/style/style.css">
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
  <body ng-app="spamodule" class="ng-cloak">

      <div>Hello</div>
      <div class="container">
        <div ng-view></div>
      </div>

      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="js/lib/angular-route.min.js"></script>
      <script src="js/spa/root.js"></script>
      <script src="js/spa/controller/PersonlistController.js"></script>
      <script src="js/spa/controller/CreatePersonController.js"></script>
      <script src="js/spa/controller/ShowPersonController.js"></script>
      <script src="js/spa/service/userservice.js"></script>

  </body>
</html>