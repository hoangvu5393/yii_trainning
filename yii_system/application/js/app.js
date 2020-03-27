'use strict';

let applicationApp = angular.module("applicationApp", ['ngRoute']);
let apiUrl = 'http://local.application.com'

applicationApp.config(function($routeProvider, $locationProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'list.html',
            controller: 'indexCtrl'
        })
        .when('/create', {
            templateUrl: 'create.html',
            controller: 'createCtrl'
        })
        .when('/:page', {
            templateUrl: 'list.html',
            controller: 'indexCtrl'
        })
        .when('/:id/edit', {
            templateUrl: 'edit.html',
            controller: 'editCtrl'
        });

    // $locationProvider.html5Mode({
    //     enabled: true,
    //     rewriteLinks: true,
    //     requireBase: false
    // });
});

applicationApp.controller('indexCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let page = $routeParams.page
    let url = ''
    if(!page) {
        url = apiUrl + '/applications'
    } else {
        url = apiUrl + '/applications?page=' + page
    }
    $http({
        method: 'GET',
        url: url
    }).then(function (response){
        $scope.applications = response.data
        let page_count = []
        for (let i=1; i <= response.headers('X-Pagination-Page-Count'); i++) {
            page_count.push(i);
        }
        $scope.pagination = {
            'link': response.headers('Link'),
            'current_page': response.headers('X-Pagination-Current-Page'),
            'page_count': page_count,
            'per_page': response.headers('X-Pagination-Per-Page'),
            'total_count': response.headers('X-Pagination-Total-Count'),
        }

        console.log($scope.pagination)
    },function (error){
        console.log(error);
    });
}]);

applicationApp.controller('createCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let page = $routeParams.page
    $http({
        method: 'GET',
        url: apiUrl + '/applications/add'
    }).then(function (response){
        $scope.studyPlans = response.data.study_plans
    },function (error){
        console.log(error);
    });
}]);

applicationApp.controller('storeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.store = function(application) {
        let data = application
        let message = ''
        $http({
            method: 'POST',
            data: data,
            url: apiUrl + '/applications',
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

applicationApp.controller('editCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let id = $routeParams.id
    $http({
        method: 'GET',
        url: apiUrl + '/applications/' + id
    }).then(function (response){
        $scope.application = response.data.application
        if(!response.data.application.studyPlans) {
            $scope.selectApplication = response.data.application.studyPlans[0]['id']
        }
        $scope.studyPlans = response.data.study_plans
    },function (error){
        console.log(error);
    });
}]);

applicationApp.controller('updateCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    $scope.update = function(application) {
        let data = application
        let message = ''
        let id = $routeParams.id
        $http({
            method: 'PUT',
            data: data,
            url: apiUrl + '/applications/' + id
        }).then(function (response) {
            message = "Updated successfully"
            $scope.response = response
            $scope.message = message
        }, function (error) {
            $scope.response = error
            $scope.message = error.data[0].message
        });
    }
}]);

applicationApp.controller('deleteCtrl', ['$scope', '$http', function($scope, $http){
    $scope.delete = function(application) {
        let applicationId = application.id
        $http({
            method: 'DELETE',
            url: apiUrl + '/applications/' + applicationId
        }).then(function (response) {
            let index = $scope.applications.findIndex( application => application.id === applicationId)
            $scope.applications.splice(index, 1)
        }, function (error) {
            console.log(error);
        });
    }
}]);