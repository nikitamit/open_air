OpenAir.module.filter('openAirDate', function() {
  return function(date) {
    date = date.Date;
    return new Date(date.year, date.month, date.day, date.hour, date.minute, date.second);
  };
});
