OpenAir.module.filter('capitalize', function() {
  return function(input) {
    if (_(input).isString()) {
      return _.str.capitalize(input);
    } else {
      return '';
    }
  };
});
