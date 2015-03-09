gulp       = require('gulp')
gulpif     = require('gulp-if')
sass       = require('gulp-sass')
sourcemaps = require('gulp-sourcemaps')
config     = require('../config').sass
fs         = require('fs')
env        = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

gulp.task 'styles', ->
  gulp.src(config.src)
    .pipe(gulpif(env is 'development', sourcemaps.init()))
    .pipe(sass(config.settigs))
    .pipe(gulpif(env is 'development', sourcemaps.write()))
    .pipe(gulp.dest(config.dest))
