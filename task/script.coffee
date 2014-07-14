gulp       = require 'gulp'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'
streamify  = require 'gulp-streamify'
uglify     = require 'gulp-uglify'

SRC  = './src/coffee'
DIST = './dist/js'

gulp.task 'script', ->
  browserify
    entries: ["#{SRC}/index.coffee"]
    extensions: ['.coffee']
  .bundle()
  .pipe source 'index.js'
  .pipe streamify uglify mangle: false# mangle: false # without mangling for AngularJS
  .pipe gulp.dest "#{DIST}/"