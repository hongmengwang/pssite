var app = new angular.module('front',[]);

var person = ['$scope', '$http', function($scope, $http) {
    $http.get('/pssite/front/person').success(function(data) {
        $scope.personList = data;
    });
}];
