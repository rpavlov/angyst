@app = angular.module('Gyst', ['ngResource', 'ui.router','ng-rails-csrf', 'appControllers', 'restangular'])

app.config((RestangularProvider) ->
  RestangularProvider.setRequestSuffix('.json');
)