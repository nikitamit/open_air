OpenAir.Controllers.Timecards = function($scope, Timecard) {
  $scope.timecards = Timecard.query();
};

OpenAir.Controllers.Timecards.$inject = ['$scope', 'Timecard'];
