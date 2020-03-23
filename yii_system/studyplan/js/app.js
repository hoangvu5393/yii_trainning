'use strict';

var studyPlanApp = angular.module("studyPlanApp", ['ngRoute']);

studyPlanApp.config(function($routeProvider, $locationProvider) {
    $routeProvider
        .when('/import', {
            templateUrl: 'import.html',
        })

    // $locationProvider.html5Mode({
    //     enabled: true,
    //     rewriteLinks: true,
    //     requireBase: false
    // });
});

studyPlanApp.controller('importCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    // let id = $routeParams.id
    // $http({
    //     method: 'GET',
    //     url: 'http://yii.studyplan/import/' + id
    // }).then(function (response){
    //     $scope.application = response.data
    // },function (error){
    //     console.log(error);
    // });
}]);

