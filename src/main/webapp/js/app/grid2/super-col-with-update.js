angular.module("gridapp2").
directive('superColWidthUpdate', ['$timeout', function ($timeout) {
    return {
      'restrict': 'A',
          'link': function (scope, element) {
          var groupId = scope.col.colDef.superCol,
              _count = scope.col.colDef.count,
              _el = jQuery(element);
          _el.on('resize', function () {
              updateSuperColWidth();
          });
          var updateSuperColWidth = function () {
              $timeout(function () {
                  var groupCol = jQuery('.ui-grid-header-cell[col-name="' + groupId + '"]');
                  var groupColWidth = groupCol.outerWidth(),
                      _width = _el.outerWidth();
                  if (_count > 1) {
                    groupColWidth = groupColWidth + _width;
                  } else if(_count === 1) {
                    groupColWidth = _width;
                  }
                  groupCol.css({
                      'min-width': groupColWidth + 'px',
                      'max-width': groupColWidth + 'px',
                      'text-align': "center"
                  });
              }, 10);
          };
          updateSuperColWidth();
      }
    };
  }]);