@appControllers = angular.module('appControllers', []);

# appControllers.controller('GoalsetShowCtrl', ['$scope', 'Goalset',
#  ($scope, Goalset) -> $scope.goalset_tasks = Task.query({goalset_id: "@goalset_id", id: "@id"})]
# )

appControllers.controller('GoalsetListCtrl', ['$scope', 'Restangular',
	($scope,Restangular) ->


		$scope.goalsets = Restangular.all('goalsets').getList()

])

# appControllers.controller('GoalsetListCtrl', ['$scope', '$http',
# 	($scope,$http) -> $http.get("goalsets.json").success(($data)-> $scope.goalsets = data)
# ])


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