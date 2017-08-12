var gulp  = require('gulp');
var gutil = require('gulp-util');

gulp.task('build', ['sass'], function() {
  gutil.log(gutil.colors.magenta('Assets built successfully...'));
});