gulp    = require 'gulp'
csslint = require 'gulp-csslint'
notify  = require 'gulp-notify'

SRC  = './src/font'

module.exports = ->
  gulp.src ["#{SRC}/**/*.css"]
  .pipe csslint()
  .pipe csslint.reporter()
  .pipe notify (file) -> "#{file.relative} (#{file.csslint.results.length} errors)" unless file.csslint.success  
