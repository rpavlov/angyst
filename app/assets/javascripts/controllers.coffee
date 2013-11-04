@appControllers = angular.module('appControllers', []);

# appControllers.controller('GoalsetShowCtrl', ['$scope', 'Goalset',
#  ($scope, Goalset) -> $scope.goalset_tasks = Task.query({goalset_id: "@goalset_id", id: "@id"})]
# )

# appControllers.controller('GoalsetListCtrl', ['$scope', '$http','Goalset',
# 	($scope,$http, Goalset) -> $scope.goalsets = Goalset.query()]
# )

# appControllers.controller('GoalsetListCtrl', ['$scope', '$http',
# 	($scope,$http) -> $http.get("goalsets.json").success(($data)-> $scope.goalsets = data)
# ])


# @GoalsetsShowCtrl = ["$scope", "Goalset", ($scope, Goalset) ->
# 	$scope.goalset_tasks = Task.query({goalset_id: "@goalset_id", id: "@id"})
# ]


@GoalsetListCtrl = ["$scope", "Goalsets", ($scope, Goalsets) ->
	$scope.goalsets = Goalsets.query()

	$scope.addGoalset = ->
		$scope.goalsets.push($scope.newGoalset)
		$scope.newGoalset = {}

	$scope.viewGoalset = ->
    $location.url('/goalset')
]

@GoalsetShowCtrl = ["$scope", "$stateParams",($scope, $stateParams) ->
	$scope.goalset = $stateParams.goalset

]