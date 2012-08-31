describe("module openAir.Config", function () {
  describe("Router", function () {
    var $browser;

    beforeEach(inject(function($browser) {
      $browser = $browser;
    }));

    it("routes /timesheets correctly", function () {
      $browser.navigateTo('/timesheets');
      expect($browser.location().url()).toBe('/#/timesheets');
    });

    it("routes / correctly", function () {
      $browser.navigateTo('/');
      expect($browser.location().url()).toBe('/');
    });


  });
});
