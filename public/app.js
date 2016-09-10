angular.module('baseballStats', ['ngResource'])

.service('HitterStats', ['$resource', function($resource){
    return $resource('/hitter_stats')
}])
.controller('HitterStatsController', ['$scope', 'HitterStats', function($scope, HitterStats){
    HitterStats.get({limit: '25', order: 'asc'}, function(result){
        $scope.hitters = result;
    });
    /*$scope.hitters = [
        {name: 'Peter Pan', avg: 35, rbi:1, hr:3, runs: 2, sb: 3, ops:65},
        {name: 'Marty McFly', avg: 15, rbi:12, hr:33, runs: 52, sb: 2, ops:5}
    ];*/
}]);