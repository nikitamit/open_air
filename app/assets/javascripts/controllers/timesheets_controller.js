OpenAir.Controllers.Timesheets = function($scope, Timesheet) {
  var humanStatus = {
    R: 'Rejected',
    A: 'Accepted'
  };

  $scope.timesheets = Timesheet.query();

  $scope.humanStatus = function(timesheet) {
    return humanStatus[timesheet.status];
  };
};

OpenAir.Controllers.Timesheets.$inject = ['$scope', 'Timesheet'];
