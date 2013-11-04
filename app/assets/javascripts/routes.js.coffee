app.config(['$stateProvider', '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state('goalsetList', {
        url: '/',
        templateUrl: "goalsets.html",
        controller: 'GoalsetListCtrl'
      })
      .state('goalsetList.goalset',{
        url: '/:goalset',
        templateUrl: 'goalsets.show.html',
        controller: ($scope, $stateParams) -> $scope.goalset = $stateParams.goalset
      })

  ])

# app.config(['$routeProvider',
#   ($routeProvider) ->
#     $routeProvider.
#       when('/', {
#         templateUrl:  'goalset-list.html'
#         controller: 'GoalsetListCtrl'
#       }).

#       otherwise({
#         redirectTo: '/'
#       })
#   ])

  # .config ($httpProvider) ->
  #   authToken = $("meta[name=\"csrf-token\"]").attr("content")
  #   $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken