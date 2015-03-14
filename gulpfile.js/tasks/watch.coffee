gulp   = require('gulp')
config = require('../config')

gulp.task 'watch', ->
  gulp.watch [
    config.coffee.src
    config.scripts.src
  ], [ 'scripts' ]
  gulp.watch [
    config.styles.src
  ], [ 'styles' ]
  gulp.watch [
    config.jade.src
  ], [ 'jade' ]
  return