require 'angular'
require 'angular-translate' # pascalprecht.translate

angular.module 'app', [
  'pascalprecht.translate'
]
.directive 'marked', require './directive/marked'
.controller 'PageController', require './controller/PageController'
.config ($locationProvider, $translateProvider) ->
  $translateProvider
  .translations 'en', require '../locale/en.json'
  .translations 'ja', require '../locale/ja.json'
  .preferredLanguage 'en'