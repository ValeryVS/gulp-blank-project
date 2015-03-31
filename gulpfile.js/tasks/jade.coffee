gulp        = require('gulp')
browserSync = require('browser-sync')
jade        = require('gulp-jade')
config      = require('../config').jade
fs          = require('fs')
env         = require('../env')  if fs.existsSync('gulpfile.js/env.coffee')

gulp.task 'jade', ->
  gulp.src(config.src)
    .pipe(jade(pretty: env is 'development'))
    .pipe(gulp.dest(config.dest))
    .pipe(browserSync.reload({stream:true}))
