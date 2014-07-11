module.exports = ($translate, $scope) ->
  lang = $translate.use()
  $scope.changeLanguage = (langKey) ->
    $translate.use langKey
    $scope.document_path = "docs/#{langKey}.md"
  $scope.changeLanguage lang