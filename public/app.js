angular.module('baseballStats', ['ngResource'])

    .service('HitterStats', ['$resource', function ($resource) {
        return $resource('/hitter_stats');
    }])
    .controller('HitterStatsController', ['$scope', 'HitterStats', function ($scope, HitterStats) {
        $scope.params = {order: false, sortBy: 'avg', limit: '25'};
        var loadStats = function(){
            HitterStats.query({order:  $scope.params.sortBy + ($scope.params.order ? ' asc' : ' desc'), limit: $scope.params.limit}, function (result) {
                $scope.hitters = result;
            }, function(error){
                $scope.failure = {error: error, msg: 'Error! Something unexpected happened. Please try again later'};
            })
        };
        loadStats();
        $scope.reorder = function (sortBy) {
            if ($scope.params.sortBy == sortBy) {
                $scope.params.order = !$scope.params.order;
            }
            $scope.params.sortBy = sortBy;
            loadStats();
        };


    }]);