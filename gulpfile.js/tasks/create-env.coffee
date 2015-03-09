fs     = require('fs')
gulp   = require('gulp')
rename = require("gulp-rename")

gulp.task 'create-env', ->
  console.log(fs.existsSync('gulpfile.js/env.coffee'));
  unless fs.existsSync('gulpfile.js/env.coffee')
    gulp.src('./gulpfile.js/env.coffee.example')
        .pipe(rename('env.coffee'))
        .pipe(gulp.dest('./gulpfile.js'))
