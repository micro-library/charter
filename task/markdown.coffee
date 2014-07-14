gulp    = require 'gulp'
changed = require 'gulp-changed'
replace = require 'gulp-replace'

SRC  = './src/markdown'
DIST = './dist/markdown'

gulp.task 'markdown', ->
  gulp.src ["#{SRC}/*.md"]
  .pipe changed "#{DIST}/"
  .pipe gulp.dest "#{DIST}/"
