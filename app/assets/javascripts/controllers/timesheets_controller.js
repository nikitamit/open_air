OpenAir.Controllers.Timesheets = function($scope, Timesheet) {
  $scope.timesheets = Timesheet.query();

  $scope.statues = {
    O: 'open',
    S: 'submitted',
    A: 'approved',
    R: 'rejected',
    X: 'archived'
  };

  $scope.humanStatus = function(timesheet) {
    return $scope.statues[timesheet.status];
  };

  $scope.toggleTimecard = function(timesheet) {
    timesheet.timecardUrl = timesheet.timecardUrl ? null : '/assets/timecards/index.html';
  };
};

OpenAir.Controllers.Timesheets.$inject = ['$scope', 'Timesheet'];
