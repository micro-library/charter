gulp    = require 'gulp'
changed = require 'gulp-changed'
replace = require 'gulp-replace'

SRC  = './src'
DIST = './dist'

gulp.task 'html', ->
  gulp.src ["#{SRC}/index.html"]
  .pipe changed "#{DIST}/"
  .pipe replace '../dist/js/', 'js/'
  .pipe gulp.dest "#{DIST}/"
