var gulp         = require('gulp'),
    gulpSequence = require('gulp-sequence');

// gulp.task('default', ['build', 'watch']);
gulp.task('default', gulpSequence('clean', 'scripts'));
