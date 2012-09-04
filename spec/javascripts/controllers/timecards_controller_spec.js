describe("OpenAir.Controllers", function () {
  describe("Timecards", function () {
    var controller, scope, $httpBackend, expectedResult;

    beforeEach(inject(function($rootScope, $controller, _$httpBackend_) {
      expectedResult = [ {foo: 'bar'}, {foo: 'baz'} ];
      $httpBackend = _$httpBackend_;
      $httpBackend.when('GET', '/api/v1/timesheets/12/timecards').respond(expectedResult);

      scope = $rootScope.$new();
      scope.timesheet = {id: 12};
      controller = $controller(OpenAir.Controllers.Timecards, {$scope: scope});
    }));

    describe("$scope.timecards", function () {
      it("gets the timecards from the backend", function () {
        expect(scope.timecards).toEqual([]);
        $httpBackend.flush();
        expect(scope.timecards).toEqualData(expectedResult);
      });
    });
  });
});

