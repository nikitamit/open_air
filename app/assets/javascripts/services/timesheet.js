OpenAir.module.factory('Timesheet', ['$resource', function($resource) {
  return $resource('/api/v1/timesheets');
}]);
