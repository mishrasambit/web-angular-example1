<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/ui-grid.min.css">
    <link rel="stylesheet" href="css/lib/toastr.min.css">
    <style>
    .grid {
      width: 500px;
      height: 58px!important;
    }
    </style>
  </head>
  <body ng-app="gridapp2" >
        result sum : {{2+2}}
        <div ng-controller="MainCtrl">

            <div id="grid" ui-grid="gridOptions" class="grid"></div>

            Toast service refer: https://github.com/Foxandxss/angular-toastr
            <button ng-click="showToast()">click for toast</button>
        </div>

      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="js/lib/angular-animate.min.js"></script>
      <script src="js/lib/ui-grid.min.js"></script>
      <script src="js/lib/toastr.min.js"></script>
      <script src="js/app/grid2/gridapp2.js"></script>
      <script src="js/app/grid2/super-col-with-update.js"></script>
  </body>
</html>