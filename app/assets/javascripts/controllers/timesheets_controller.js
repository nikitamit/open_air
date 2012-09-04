OpenAir.Controllers.Timesheets = function($scope, Timesheet) {
  $scope.timesheets = Timesheet.query();

  $scope.humanStatus = function(timesheet) {
    var statues = {
      R: 'rejected',
      A: 'accepted',
      S: 'submitted'
    };
    return statues[timesheet.status];
  };

  $scope.toggleTimecard = function(timesheet) {
    timesheet.timecardUrl = timesheet.timecardUrl ? null : '/assets/timecards/index.html';
  };
};

OpenAir.Controllers.Timesheets.$inject = ['$scope', 'Timesheet'];
