@appControllers = angular.module('appControllers', []);

# appControllers.controller('GoalsetShowCtrl', ['$scope', 'Goalset',
#  ($scope, Goalset) -> $scope.goalset_tasks = Task.query({goalset_id: "@goalset_id", id: "@id"})]
# )

appControllers.controller('GoalsetListCtrl', ['$scope', 'Restangular',
	($scope, Restangular) -> $scope.goalsets = Restangular.all('goalsets').getList()
])

appControllers.controller('GoalsetShowCtrl', ['$scope', '$routeParams','Restangular',
	($scope, $routeParams, Restangular) -> $scope.goalset = Restangular.one('goalsets', $routeParams.goalsetId).get()
])


# @GoalsetsShowCtrl = ["$scope", "Goalset", ($scope, Goalset) ->
# 	$scope.goalset_tasks = Task.query({goalset_id: "@goalset_id", id: "@id"})
# ]


# @GoalsetListCtrl = ["$scope", "Restangular", ($scope, Restangular) ->
# 	$scope.goalsets =  Restangular.all('goalsets');

# 	$scope.addGoalset = ->
# 		$scope.goalsets.push($scope.newGoalset)
# 		$scope.newGoalset = {}
# ]

# @GoalsetShowCtrl = ["$scope", "Goalset",($scope, Goalset) ->
# 	$scope.goalset = Goalset.query()

# ]