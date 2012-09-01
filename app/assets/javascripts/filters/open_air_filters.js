OpenAir.module.filter('openAirDate', function() {
  return function(date) {
    if (date && date.Date) {
      date = date.Date;
      return new Date(date.year, date.month, date.day, date.hour, date.minute, date.second);
    } else {
      return null;
    }
  };
});
