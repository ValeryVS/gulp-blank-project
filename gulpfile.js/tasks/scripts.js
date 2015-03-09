var gulp   = require('gulp'),
    coffee = require('gulp-coffee'),
    uglify = require('gulp-uglify'),
    concat = require('gulp-concat'),
    es     = require('event-stream'),
    config = require('../config');

gulp.task('scripts', function() {
  var jsFromCoffee = gulp.src(config.coffee.src)
    .pipe(coffee());
  var js = gulp.src(config.scripts.src);
  return es.merge(jsFromCoffee, js)
    .pipe(concat('app.js'))
    .pipe(uglify())
    .pipe(gulp.dest(config.scripts.dest));
});
