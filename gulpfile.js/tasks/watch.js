var gulp   = require('gulp'),
    config = require('../config');

gulp.task('watch', function() {
  gulp.watch([config.coffee.src, config.scripts.src], ['scripts']);
});
