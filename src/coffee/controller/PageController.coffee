module.exports = ($location, $translate, $scope) ->
  $scope.changeLanguage = (lang) ->
    $translate.use lang
    $scope.document_path = "markdown/#{lang}.md"
    $scope.lang = lang
  
  $scope.$watch ->
    $location.url()
  , (url) ->
    switch url
      when '/ja' then $scope.changeLanguage 'ja'
      else $scope.changeLanguage 'en'
  
  $scope.changeLanguage $translate.use()