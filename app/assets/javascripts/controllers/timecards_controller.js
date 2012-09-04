OpenAir.Controllers.Timecards = function($scope, Timecard) {
  $scope.timecards = Timecard.query({timesheetId: $scope.timesheet.id});
};

OpenAir.Controllers.Timecards.$inject = ['$scope', 'Timecard'];
