gulp         = require 'gulp'
browserSync  = require 'browser-sync'
reload       = browserSync.reload

gulp.task 'default', ['html', 'css', 'script', 'symbols']
gulp.task 'html', require './tasks/html'
gulp.task 'docs', require './tasks/docs'
gulp.task 'symbols', require './tasks/symbols'
gulp.task 'script', require './tasks/script'
gulp.task 'css', require './tasks/css'
gulp.task 'csslint', require './tasks/csslint'

gulp.task 'watch', ->
  browserSync.init
    notify: false
    server:
      baseDir: './app/'
  gulp.watch ['./src/coffee/**/*.coffee'], ['script']
  gulp.watch ['./src/css/**/*.css'], ['css']
  gulp.watch ['./src/font/*.sketch/Data'], ['symbols']
  gulp.watch ['./src/**/*.html'], ['html']
  gulp.watch ['./src/docs/*.md'], ['docs']
  gulp.watch ['./app/css/style.css', './app/**/*.html', './app/docs/*.md'], reload