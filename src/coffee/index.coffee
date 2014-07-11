require 'angular'
#require 'angular-sanitize' # ngSanitize
require 'angular-route' # ngRoute
require 'angular-translate' # pascalprecht.translate

angular.module 'app', [
  'ngRoute'
  'pascalprecht.translate'
]
.directive 'marked', require './directives/marked'
.controller 'PageController', ['$translate', '$scope', require './controllers/PageController']
.config [
  '$translateProvider',
  '$routeProvider',
  ($translateProvider, $routeProvider) ->
    $translateProvider
    .translations 'en', require '../locale/en.json'
    .translations 'ja', require '../locale/ja.json'
    .preferredLanguage 'en'
]