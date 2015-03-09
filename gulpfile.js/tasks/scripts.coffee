gulp       = require('gulp')
browserify = require('browserify')
cofeeify   = require('coffeeify')
uglifyify  = require('uglifyify')
source     = require('vinyl-source-stream')
uglify     = require('gulp-uglify')
streamify  = require('gulp-streamify')
config     = require('../config').browserify

gulp.task 'scripts', ->
  browserify(config, debug: true)
    .transform('coffeeify')
    .transform('uglifyify')
    .bundle()
    .pipe(source(config.outputName))
    .pipe(gulp.dest(config.dest))
