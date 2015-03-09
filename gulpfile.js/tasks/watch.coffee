gulp   = require('gulp')
config = require('../config')

gulp.task 'watch', ->
  gulp.watch [
    config.coffee.src
    config.scripts.src
  ], [ 'scripts' ]
  return