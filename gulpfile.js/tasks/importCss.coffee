gulp       = require('gulp')
cssimport  = require("gulp-cssimport")
config     = require('../config').importCss

gulp.task 'importCss', ->
  gulp.src(config.src)
    .pipe(cssimport(config.settings))
    .pipe(gulp.dest(config.dest))
