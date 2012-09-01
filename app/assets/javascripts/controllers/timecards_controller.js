OpenAir.Controllers.Timecards = function($scope, Timecard) {
  $scope.onInclude = function(timesheetId) {
    $scope.timecards = Timecard.query({timesheet_id: timesheetId});
  };
};

OpenAir.Controllers.Timecards.$inject = ['$scope', 'Timecard'];
