var gulp = require('gulp'),
    jade = require('gulp-jade'),
    config = require('../config').jade;

gulp.task('jade', function() {
  return gulp.src(config.src)
    .pipe(jade())
    .pipe(gulp.dest(config.dest));
});
