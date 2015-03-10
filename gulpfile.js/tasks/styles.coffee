gulp       = require('gulp')
gulpif     = require('gulp-if')
sass       = require('gulp-ruby-sass')
sourcemaps = require('gulp-sourcemaps')
config     = require('../config').sass
fs         = require('fs')
env        = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

config.settings.style     = 'compressed'  if env is 'production'
config.settings.sourcemap = 'auto'        if env is 'development'
console.log(config.settings)

gulp.task 'styles', ->
  sass(config.src, config.settigs)
    .on('error', (err) ->
      console.error 'Error!', err.message
      return
    )
    .pipe(gulpif(env is 'development',
      sourcemaps.write('maps', config.settingsSourcemaps)
    ))
    .pipe(gulp.dest(config.dest))
