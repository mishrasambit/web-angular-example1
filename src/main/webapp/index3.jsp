<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AngularJS $http Example</title>
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/lib/angular-material.min.css">
    <style>
    </style>
  </head>
  <body ng-app="mdapp" >
      <div layout="column" flex layout-fill ng-cloak>
        <md-content layout="row">
          <md-sidenav md-is-locked-open="true" flex class="md-sidenav-left">
            <h4>side nav content</h4>
          </md-sidenav>
          <div layout-padding flex="80">
            Lorem ipsum
            ...
          </div>
        </md-content>
        

        <md-content layout="row" ng-controller="materialController">
          <md-sidenav md-is-open="true" class="md-sidenav-left">
            <md-toolbar layout-padding class="md-medium-tall">
            <h2 class="md-toolbar-tools">All Actions</h2>
            </md-toolbar>
          </md- sidenav>
          <div layout-padding flex="80">
            <md-button class="md-icon-button" ng-click="toggleLeftSidenav()"
              <md-icon md-svg-src="">click menu</md-icon>
            </md-button>
          </div>
        </md-content>

        <!-- <md-toolbar>
          <div class="md-toolbar-tools">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 100 100" xml:space="preserve" style="
            width: 24px; height: 24px;">
              <path d="M 50 0 L 100 14 L 92 80 Z" fill="rgba(139, 195, 74, 0.5)"></path>
              <path d="M 92 80 L 50 0 L 50 100 Z" fill="rgba(139, 195, 74, 0.8)"></path>
              <path d="M 8 80 L 50 0 L 50 100 Z" fill="#f3f3f3"></path>
              <path d="M 50 0 L 8 80 L 0 14 Z" fill="rgba(220, 220, 220, 0.6)"></path>
            </svg>
            <span flex></span>

            <md-truncate style="font-size: 12px;">Toolbar with Standard Buttons</md-truncate>            
          </div>
        </md-toolbar>

        <div class="box-row">
          <div class="box-cell">
            <div class="box-inner">
              <div class="col-xs-12">
                <div flex-xs flex-gt-xs="100" layout="column">
                  <md-card md-theme="{{ showDarkTheme ? 'dark-grey' : 'default' }}" md-theme-watch>
                    <md-card-title>
                      <md-card-title-text>
                        <span class="md-headline">Card with image</span>
                        <span class="md-subhead">Large</span>
                      </md-card-title-text>
                      <md-card-title-media>
                        <div class="md-media-lg card-media"></div>
                      </md-card-title-media>
                    </md-card-title>
                    <md-card-actions layout="row" layout-align="end center">
                      <md-button>Action 1</md-button>
                      <md-button>Action 2</md-button>
                    </md-card-actions>
                    <div layout="row" >
                      <textarea rows="5" cols="50" placeholder="text field 1"></textarea>
                      <textarea rows="5" cols="50" placeholder="text field 2"></textarea>
                    </div>
                  </md-card>
                </div>
              </div>
            </div>
          </div> -->
        </div>
      <script src="js/lib/jquery-2.1.3.min.js"></script>
      <script src="js/lib/bootstrap.min.js"></script>
      <script src="js/lib/angular.min.js"></script>
      <script src="js/lib/angular-animate.min.js"></script>
      <script src="js/lib/angular-aria.min.js"></script>
      <script src="js/lib/angular-messages.min.js"></script>
      <script src="js/lib/angular-material.min.js"></script>

      <script src="js/md-app/md-app.js"></script>

  </body>
</html>