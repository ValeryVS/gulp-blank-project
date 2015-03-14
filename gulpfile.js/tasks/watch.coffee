gulp   = require('gulp')
config = require('../config')

gulp.task 'watch', ->
  gulp.watch [
    config.watch.coffee.src
    config.watch.scripts.src
  ], [ 'scripts' ]
  gulp.watch [
    config.watch.styles.src
  ], [ 'styles' ]
  gulp.watch [
    config.jade.src
  ], [ 'jade' ]
  return