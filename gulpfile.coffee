gulp         = require 'gulp'
runSequence  = require 'run-sequence'
browserSync  = require 'browser-sync'
reload       = browserSync.reload

gulp.task 'symbols', require './tasks/symbols'
gulp.task 'html',    require './tasks/html'
gulp.task 'docs',    require './tasks/docs'
gulp.task 'script',  require './tasks/script'
gulp.task 'css',     require './tasks/css'
gulp.task 'csslint', require './tasks/csslint'

gulp.task 'default', -> runSequence 'symbols', ['html', 'docs', 'script', 'css']

gulp.task 'watch', ->
  browserSync.init
    notify: false
    server: baseDir: './app/'
  gulp.watch ['./src/coffee/**/*.coffee'], ['script']
  gulp.watch ['./src/css/**/*.css'], ['css']
  gulp.watch ['./src/font/*.sketch/Data'], ['symbols']
  gulp.watch ['./src/index.html'], ['html']
  gulp.watch ['./src/docs/*.md'], ['docs']
  gulp.watch ['./dist/css/style.css', './dist/index.html', './dist/docs/*.md'], reload