gulp         = require('gulp')
gulpSequence = require('gulp-sequence')

gulp.task 'build', gulpSequence('clean', 'images', ['scripts', 'styles'], 'jade')
