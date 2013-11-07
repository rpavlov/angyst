@appControllers = angular.module('appControllers', []);

appControllers.controller('GoalsetListCtrl', ['$scope', 'Restangular',
	($scope, Restangular) -> $scope.goalsets = Restangular.all('goalsets').getList()
])

appControllers.controller('GoalsetShowCtrl', ['$scope', '$stateParams','Restangular',
	($scope, $stateParams, Restangular) -> $scope.goalset = Restangular.one('goalsets', $stateParams.goalsetId).get()
])
