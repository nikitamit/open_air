describe("module openAir.Filters", function () {
  describe("OpenAir", function () {
    describe('Date', function() {
      it('returns a JS date object', inject(function(openAirDateFilter, dateFilter) {
        var date = new Date(),
          openAirDate = {Date: {
            year: date.getFullYear(), month:date.getMonth(), day:date.getDate(),
            hour: date.getHours(), minute:date.getMinutes(), second:date.getSeconds()
          }};

        expect(openAirDateFilter(openAirDate).toString()).toEqual(dateFilter(date, 'short'));
        expect(openAirDateFilter({})).toEqual({});
      }));
    });
  });
});
