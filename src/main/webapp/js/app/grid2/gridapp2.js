var app = angular.module("gridapp2",['ngAnimate', 'toastr', 'ui.grid']);

app.controller('MainCtrl', ['$scope','toastr', function ($scope, toastr) {

   $scope.showToast = function(){
        toastr.success('Hello World!', 'Toastr fun!');
   };
   $scope.gridOptions = {
         enableRowSelection: true,
         enableRowHeaderSelection: false,
         modifierKeysToMultiSelect: true,
         multiSelect: false,
         enableColumnMenus: false,  // remove the column menu for sorting, that you get anyway by just clicking the header
         showHeader: true,
         showGridFooter:true,
         headerTemplate: 'js/app/grid2/header-template.html',
         superColDefs: [
         {
              name: 'group0',
              displayName: ''
         },
         {
             name: 'group1',
             displayName: 'Input Channel'
         },
         {
             name: 'group2',
             displayName: 'Output Channel'
         }],
         columnDefs: [{
             name: 'template',
             displayName: 'Template Name',
             categoryDisplayName: 'Group 1',
             superCol: 'group0',
             count:1
         }, {
             name: 'mapper',
             displayName: 'Mapper Name',
             categoryDisplayName: 'Group 1',
             superCol: 'group0',
             count:2
         }, {
             name: 'inputChannel_function',
             displayName: 'Function',
             categoryDisplayName: 'Input Channel',
             superCol: 'group1',
             count:1
         },
         {
            name: 'inputChannel_type',
            displayName: 'Type',
            categoryDisplayName: 'Input Channel',
            superCol: 'group1',
            count:2
         },
         {
             name: 'outputChannel_type',
             displayName: 'Type',
             categoryDisplayName: 'Output Channel',
             superCol: 'group2',
             count:1
         }
         ],
         data: [{
             template: 'Bob',
             mapper: 'CEO',
             inputChannel_function: '31',
             inputChannel_type: 'baar',
             outputChannel_type: 'foo'
         },
         {
            template: 'Bob',
            mapper: 'CEO',
            inputChannel_function: '31',
            inputChannel_type: 'baar',
            outputChannel_type: 'foo'
         },
         {
             template: 'Bob',
             mapper: 'CEO',
             inputChannel_function: '31',
             inputChannel_type: 'baar',
             outputChannel_type: 'foo'
         },
         {
              template: 'Bob',
              mapper: 'CEO',
              inputChannel_function: '31',
              inputChannel_type: 'baar',
              outputChannel_type: 'foo'
         }]
     };
}]);