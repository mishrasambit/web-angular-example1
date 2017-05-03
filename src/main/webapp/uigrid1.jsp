<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/ui-grid.min.css">
    <style>http://jsfiddle.net/user/dashboard/
    .grid {
      width: 500px;
      /* height: 250px;*/
    }

    /* CSS to define autoHeight */
    .autoHeightUIGrid,
    .autoHeightUIGrid .ui-grid-viewport{
    	height: auto !important;
    }


    .ui-grid-spilt-header-main{
    	 /* padding-top: 75px; */ /* added top padding dynamically by Js */
      line-height: 30px;
    	text-align: center;
    }

    .ui-grid-split-merge-header{
      border-left: 2px solid transparent;
    	position: absolute;
    	background: #f3f3f3;
    	text-align: center;
    	line-height: 30px;
    	z-index: 1;
    	top: 0px;
    	left:0px;
    }
    .ui-grid-header-table{
      width:100%;
      padding:0px;
      border:none;
      border-spacing: 0px;
      border-collapse: collapse;
    }
    .ui-grid-header-table tr td{
      border-bottom:1px solid #ccc;
      border-right:1px solid #ccc;
    }
    .ui-grid-header-table tr td:last-child{
      border-right:none;
    }
    </style>
  </head>
  <body ng-app="gridapp" >
        result sum : {{2+2}}

        <div ng-controller="MainCtrl">
              <div id="grid1" ui-grid="gridOptions" class="grid autoHeightUIGrid"></div>
            </div>
        </div>
      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-touch.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-animate.js"></script>
      <script src="js/lib/ui-grid.min.js"></script>
      <script src="js/app/gridapp.js"></script>

        <script>
        $(document).ready(function(){
           $(".ui-grid-spilt-header-main").css('padding-top', $(".ui-grid-header-table").height());
         });
        </script>
  </body>
</html>