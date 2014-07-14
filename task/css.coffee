gulp         = require 'gulp'
cssimport    = require 'gulp-cssimport'
autoprefixer = require 'gulp-autoprefixer'
minifyCss    = require 'gulp-minify-css'
replace      = require 'gulp-replace'

SRC  = './src/css'
DIST = './dist/css'

gulp.task 'css', ->
  gulp.src ["#{SRC}/style.css"]
  .pipe cssimport()
  .pipe autoprefixer 'last 2 versions'
  .pipe replace "url('./micro-library", "url('../font/micro-library"
  .pipe minifyCss keepSpecialComments: 0
  .pipe gulp.dest "#{DIST}/"
