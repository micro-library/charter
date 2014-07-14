gulp    = require 'gulp'
csslint = require 'gulp-csslint'
notify  = require 'gulp-notify'

SRC  = './src/css'

gulp.task 'csslint', ->
  gulp.src ["#{SRC}/**/*.css"]
  .pipe csslint()
  .pipe csslint.reporter()
  .pipe notify (file) -> "#{file.relative} (#{file.csslint.results.length} errors)" unless file.csslint.success  
