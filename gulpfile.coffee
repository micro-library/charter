gulp        = require 'gulp'
runSequence = require 'run-sequence'
requireDir  = require 'require-dir'
dir         = requireDir './task'
browserSync = require 'browser-sync'
reload      = browserSync.reload

gulp.task 'default', -> runSequence 'clean', 'icon', ['html', 'markdown', 'script', 'css']

gulp.task 'watch', ->
  browserSync.init
    notify: false
    server: baseDir: './dist/'
  gulp.watch ['./src/coffee/**/*.coffee'], ['script']
  gulp.watch ['./src/css/**/*.css'], ['css']
  gulp.watch ['./src/font/*.sketch/Data'], ['icon']
  gulp.watch ['./src/index.html'], ['html']
  gulp.watch ['./src/doc/*.md'], ['markdown']
  gulp.watch ['./dist/css/style.css', './dist/index.html', './dist/markdown/*.md'], reload