gulp       = require('gulp')
gulpif     = require('gulp-if')
sass       = require('gulp-sass')
sourcemaps = require('gulp-sourcemaps')
config     = require('../config').sass
fs         = require('fs')
env        = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

config.settings.outputStyle = 'compressed'  if env is 'production'

gulp.task 'styles', ->
  gulp.src(config.src)
    .pipe(gulpif(env is 'development',
      sourcemaps.init()
    ))
    .pipe(sass(config.settings))
    .on('error', (err) ->
      console.error 'Error!', err.message
      return
    )
    .pipe(gulpif(env is 'development',
      sourcemaps.write()
    ))
    .pipe(gulp.dest(config.dest))
