OpenAir.module.factory('Timesheet', ['$resource', function($resource) {
  return $resource('/api/v1/timesheets');
}]);

OpenAir.module.factory('Timecard', ['$resource', function($resource) {
  return $resource('/api/v1/timecards');
}]);
