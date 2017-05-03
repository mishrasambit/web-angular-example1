var app = angular.module("gridapp",[ 'ui.grid']);

app.controller('MainCtrl', ['$scope', function ($scope) {
    $scope.gridOptions = {
        columnDefs: [
              {
                  name:'firstCol',
                  headerCellTemplate: "<div class='ui-grid-spilt-header-main'><div class='ui-grid-split-merge-header' style='width:500%'><table class='ui-grid-header-table'><tbody><tr><td colspan='2'>Grand Parent Header</td></tr><tr><td width='60%''>Parent Header</td><td>Parent Header</td></tr</tbody></table></div>Child header1</div>"
              },
              {
                  name:'secondCol',
                  headerCellTemplate: "<div class='ui-grid-spilt-header-main'>Child header2</div>"
              },
              {
                  name:'thirdCol',
                  headerCellTemplate: "<div class='ui-grid-spilt-header-main'>Child header1</div>",
              },
              {
                  name:'fourthCol',
                  headerCellTemplate: "<div class='ui-grid-spilt-header-main'>Child header2</div>"
              },
              {
                  name:'fifthCol',
                  headerCellTemplate: "<div class='ui-grid-spilt-header-main'>Child header3</div>"
              }
        ],
        data: [
            {
                "firstCol": "Cox",
                "secondCol": "Carney",
                "thirdCol": "Enormo",
                "fourthCol": 'Radha',
                "fifthCol": true
            },
            {
                "firstCol": "Lorraine",
                "secondCol": "Wise",
                "thirdCol": "Comveyer",
                "fourthCol": 'Jassi',
                "fifthCol": false
            },
            {
                "firstCol": "Nancy",
                "secondCol": "Waters",
                "thirdCol": "Fuelton",
                "fourthCol": 'Lusi',
                "fifthCol": false
            }
        ]
    }
}]);