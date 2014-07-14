gulp = require 'gulp'
del  = require 'del'

DIST = './dist'

gulp.task 'clean', (cb) ->
  del [DIST], -> cb()
