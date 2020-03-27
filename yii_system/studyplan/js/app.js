'use strict';

var studyPlanApp = angular.module("studyPlanApp", ['ngRoute']);
let apiUrl = 'http://local.application.com'

studyPlanApp.config(function($routeProvider, $locationProvider) {
    $routeProvider
        .when('/create', {
            templateUrl: 'create.html',
        })

    // $locationProvider.html5Mode({
    //     enabled: true,
    //     rewriteLinks: true,
    //     requireBase: false
    // });
});

studyPlanApp.controller('storeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.store = function(studyplan) {
        // let data = {
        //     "name": studyplan['name'],
        //     "study_plan_json": studyplan['study_plan_json']
        // }
        let data = studyplan
        console.log(data)
        let message = ''
        $http({
            method: 'POST',
            data: data,
            url: apiUrl + '/studyplans',
        }).then(function (response) {
            message = "Stored successfully"
            $scope.response = response
            $scope.message = message
        }, function (error) {
            $scope.response = error
            $scope.message = error.data[0].message
        });
    }
}]);

