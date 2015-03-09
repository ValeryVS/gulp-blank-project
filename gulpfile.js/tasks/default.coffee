gulp         = require('gulp')
gulpSequence = require('gulp-sequence')

gulp.task 'default', [
  'build'
  'watch'
]
