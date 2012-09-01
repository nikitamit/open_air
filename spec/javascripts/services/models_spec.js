describe("module openAir.Services", function () {
  describe("Timesheet", function () {
    var timesheet, $httpBackend, expectedResult;

    beforeEach(inject(function ($injector, _$httpBackend_) {
      expectedResult = [ {foo: 'bar'}, {foo: 'baz'} ];
      $httpBackend = _$httpBackend_;
      $httpBackend.when('GET', '/api/v1/timesheets').respond(expectedResult);

      timesheet = $injector.get('Timesheet');
    }));

    describe("#query", function () {
      it("make the correct request", function () {
        var result = timesheet.query();
        expect(result).toEqual([]);
        $httpBackend.flush();
        expect(result).toEqualData(expectedResult);
      });
    });
  });

  describe("Timecard", function () {
    var timecard, $httpBackend, expectedResult;

    beforeEach(inject(function ($injector, _$httpBackend_) {
      expectedResult = [ {foo: 'bar'}, {foo: 'baz'} ];
      $httpBackend = _$httpBackend_;
      $httpBackend.when('GET', '/api/v1/timecards').respond(expectedResult);

      timecard = $injector.get('Timecard');
    }));

    describe("#query", function () {
      it("make the correct request", function () {
        var result = timecard.query();
        expect(result).toEqual([]);
        $httpBackend.flush();
        expect(result).toEqualData(expectedResult);
      });
    });
  });
});
