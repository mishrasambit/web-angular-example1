var app = angular.module("gridapp2",[ 'ui.grid']);

app.controller('MainCtrl', ['$scope', function ($scope) {
   $scope.gridOptions = {
         headerTemplate: 'js/app/grid/header-template.html',
         superColDefs: [{
             name: 'group1',
             displayName: 'Group 1'
         }, {
             name: 'group2',
             displayName: 'Group 2'
         }],
         columnDefs: [{
             name: 'name',
             displayName: 'Name',
             superCol: 'group1'
         }, {
             name: 'title',
             displayName: 'Title',
             superCol: 'group1'
         }, {
             name: 'age',
             displayName: 'Age',
             superCol: 'group2'
         }],
         data: [{
             name: 'Bob',
             title: 'CEO',
             age: '31'
         }, {
             name: 'Frank',
             title: 'Lowly Developer',
             age: '33'
         }]
     };
}]);