# app.config(['$stateProvider', '$urlRouterProvider'
#   ($stateProvider, $urlRouterProvider) ->
#     $stateProvider
#       .state('goalsetList', {
#         url: '/',
#         templateUrl: "goalsets.html",
#         controller: 'GoalsetListCtrl'
#       })
#       .state('goalsetList.goalset',{
#         url: 'goalsets/{goalsetId}',
#         templateUrl: 'goalsets.show.html'
#       })

#   ])

app.config(['$routeProvider',
  ($routeProvider) ->
    $routeProvider.
      when('/', {
        templateUrl:  'goalsets.html'
        controller: 'GoalsetListCtrl'
      }).
      when('/goalsets/:id',{
        templateUrl: 'goalsets.show.html',
        controller: 'GoalsetShowCtrl'
      }).

      otherwise({
        redirectTo: '/'
      })
  ])

  # .config ($httpProvider) ->
  #   authToken = $("meta[name=\"csrf-token\"]").attr("content")
  #   $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken