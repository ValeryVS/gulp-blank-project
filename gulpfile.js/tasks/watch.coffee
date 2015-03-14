gulp   = require('gulp')
config = require('../config')

gulp.task 'watch', ['browserSync'], ->
  gulp.watch [
    config.watch.coffee.src
    config.watch.scripts.src
  ], [ 'scripts' ]
  gulp.watch [
    config.watch.sass.src
  ], [ 'sass' ]
  gulp.watch [
    config.watch.css.src
  ], [ 'importCss' ]
  gulp.watch [
    config.jade.src
  ], [ 'jade' ]
  return