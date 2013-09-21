var context = "pssite";

var getPerson = ['$scope', '$http', function($scope, $http) {
    $http.get('/' + context + '/front/person').success(function(data) {
        $scope.personList = data;
    });
}];

var getDiary = ['$scope', '$http', function($scope, $http) {
    var doc = angular.element(document.documentElement);
    var nick = doc.find('input').eq(0).val();
    $http.get('/' + context + '/front/' + nick + '/diary/list').success(function(data) {
        $scope.diaryList = data;
    });
}];