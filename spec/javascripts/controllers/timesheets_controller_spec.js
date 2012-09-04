describe("OpenAir.Controllers", function () {
  describe("Timesheets", function () {
    var controller, scope, $httpBackend, expectedResult;

    beforeEach(inject(function($rootScope, $controller, _$httpBackend_) {
      expectedResult = [ {foo: 'bar'}, {foo: 'baz'} ];
      $httpBackend = _$httpBackend_;
      $httpBackend.when('GET', '/api/v1/timesheets').respond(expectedResult);

      scope = $rootScope.$new();
      controller = $controller(OpenAir.Controllers.Timesheets, {$scope: scope});
    }));

    describe("$scope.timesheets", function () {
      it("gets the timesheets from the backend", function () {
        expect(scope.timesheets).toEqual([]);
        $httpBackend.flush();
        expect(scope.timesheets).toEqualData(expectedResult);
      });
    });

    describe("$scope.humanStatus", function () {
      it("gets the human readable status", function () {
        expect(scope.humanStatus({status: 'R'})).toEqual('rejected');
        expect(scope.humanStatus({status: 'A'})).toEqual('accepted');
      });
    });

    describe("toggleTimecard", function () {
      it("should toggle the timecardUrl", function () {
        var timesheet = {};
        scope.toggleTimecard(timesheet);
        expect(timesheet.timecardUrl).toEqual('/assets/timecards/index.html');
        scope.toggleTimecard(timesheet);
        expect(timesheet.timecardUrl).toBeNull();
      });
    });
  });
});

