'use strict';

var applicationApp = angular.module("applicationApp", ['ngRoute']);

applicationApp.config(function($routeProvider, $locationProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'list.html',
            controller: 'indexCtrl'
        })
        .when('/create', {
            templateUrl: 'create.html',
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
        url = 'http://yii.application/applications'
    } else {
        url = 'http://yii.application/applications?page=' + page
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

applicationApp.controller('storeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.store = function(application) {
        let data = application
        console.log(application)
        let message = ''
        $http({
            method: 'POST',
            data: data,
            url: 'http://yii.application/applications',
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
        url: 'http://yii.application/applications/' + id
    }).then(function (response){
        $scope.application = response.data
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
            url: 'http://yii.application/applications/' + id
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
            url: 'http://yii.application/applications/' + applicationId
        }).then(function (response) {
            let index = $scope.applications.findIndex( application => application.id === applicationId)
            $scope.applications.splice(index, 1)
        }, function (error) {
            console.log(error);
        });
    }
}]);