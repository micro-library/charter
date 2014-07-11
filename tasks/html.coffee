gulp    = require 'gulp'
changed = require 'gulp-changed'
replace = require 'gulp-replace'

SRC  = './src'
DIST = './app'

module.exports = ->
  gulp.src ["#{SRC}/**/*.html"]
  .pipe changed "#{DIST}/"
  .pipe replace '../app/js/', 'js/'
  .pipe gulp.dest "#{DIST}/"
