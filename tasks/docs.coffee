gulp    = require 'gulp'
changed = require 'gulp-changed'
replace = require 'gulp-replace'

SRC  = './src/docs'
DIST = './dist/docs'

module.exports = ->
  gulp.src ["#{SRC}/*.md"]
  .pipe changed "#{DIST}/"
  .pipe gulp.dest "#{DIST}/"
