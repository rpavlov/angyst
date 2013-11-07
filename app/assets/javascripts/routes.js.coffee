app.config(($stateProvider, $urlRouterProvider)->
  $stateProvider
    .state('goalsets', {
      url: "/",
      templateUrl: "goalsets.html",
      controller: "GoalsetListCtrl"
    })
    .state('goalsets.show', {
      url: "/:goalsetId",
      templateUrl: "goalsets.show.html",
      controller: "GoalsetShowCtrl"
    })
)