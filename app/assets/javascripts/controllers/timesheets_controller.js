OpenAir.Controllers.Timesheets = function($scope, Timesheet) {
  $scope.timesheets = Timesheet.query();

  $scope.statues = {
    R: 'rejected',
    A: 'accepted',
    S: 'submitted'
  };

  $scope.humanStatus = function(timesheet) {
    return $scope.statues[timesheet.status];
  };

  $scope.toggleTimecard = function(timesheet) {
    timesheet.timecardUrl = timesheet.timecardUrl ? null : '/assets/timecards/index.html';
  };
};

OpenAir.Controllers.Timesheets.$inject = ['$scope', 'Timesheet'];
