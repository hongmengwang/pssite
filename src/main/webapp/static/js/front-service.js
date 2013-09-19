angular.module('frontServices', ['ngResource']).
    factory('Person', function($resource){
        return $resource('/pssite/front/person', {}, {
            query: {method:'GET', params:{}, isArray:true}
        });
    });