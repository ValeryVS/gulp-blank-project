gulp   = require('gulp')
jade   = require('gulp-jade')
config = require('../config').jade

gulp.task 'jade', ->
  gulp.src(config.src)
    .pipe(jade())
    .pipe(gulp.dest(config.dest))
