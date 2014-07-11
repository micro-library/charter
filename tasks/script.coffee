gulp       = require 'gulp'
browserify = require 'browserify'
source     = require 'vinyl-source-stream'
streamify  = require 'gulp-streamify'
uglify     = require 'gulp-uglify'

SRC  = './src/coffee'
DIST = './app/js'

module.exports = ->
  browserify
    entries: ["#{SRC}/index.coffee"]
    extensions: ['.coffee']
  .bundle()
  .pipe source 'index.js'
  #.pipe streamify uglify()
  .pipe gulp.dest "#{DIST}/"