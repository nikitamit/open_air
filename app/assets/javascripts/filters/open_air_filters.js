OpenAir.module.filter('openAirDate', ['dateFilter', function(dateFilter) {
  return function(date) {
    if (date && date.Date) {
      date = date.Date;
      return dateFilter(new Date(date.year, date.month, date.day, date.hour, date.minute, date.second), 'short');
    } else {
      return date;
    }
  };
}]);
