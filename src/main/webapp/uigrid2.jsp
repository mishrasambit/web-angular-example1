<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/ui-grid.min.css">
    <style>
    .grid {
      width: 500px;
    }
    </style>
  </head>
  <body ng-app="gridapp2" >
        result sum : {{2+2}}
        <div ng-controller="MainCtrl">
            <div id="grid" ui-grid="gridOptions" class="grid"></div>
        </div>
      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="js/lib/ui-grid.min.js"></script>
      <script src="js/app/grid/gridapp2.js"></script>
      <script src="js/app/grid/super-col-with-update.js"></script>
  </body>
</html>