describe("module openAir.Filters", function () {
  describe("String", function () {
    describe('capitalize', function() {
      it('capitalizes the string', inject(function(capitalizeFilter) {
        expect(capitalizeFilter('foobar Baz')).toEqual('Foobar baz');
        expect(capitalizeFilter(1)).toEqual('');
      }));
    });
  });
});
