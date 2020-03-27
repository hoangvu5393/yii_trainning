'use strict';

let studentApp = angular.module("studentApp", ['ngRoute']);
let apiUrl = 'http://local.students.com'
let apiApplicationUrl = 'http://local.application.com'

studentApp.config(function($routeProvider, $locationProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'list.html',
            controller: 'indexCtrl'
        })
        .when('/create', {
            templateUrl: 'create.html',
        })
        .when('/:id/create-application', {
            templateUrl: 'create_application.html',
            controller: 'createApplicationCtrl'
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

studentApp.controller('indexCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let page = $routeParams.page
    let url = ''
    if(!page) {
        url = apiUrl + '/students'
    } else {
        url = apiUrl + '/students?page=' + page
    }
    $http({
        method: 'GET',
        url: url
    }).then(function (response){
        $scope.students = response.data
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

studentApp.controller('storeCtrl', ['$scope', '$http', function($scope, $http){
    $scope.store = function(student) {
        let data = student
        console.log(data)
        let message = ''
        $http({
            method: 'POST',
            data: data,
            url: apiUrl + '/students',
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

studentApp.controller('editCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let id = $routeParams.id
    $http({
        method: 'GET',
        url: apiUrl + '/students/' + id
    }).then(function (response){
        $scope.student = response.data
    },function (error){
        console.log(error);
    });
}]);

studentApp.controller('createApplicationCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    let id = $routeParams.id
    $http({
        method: 'GET',
        url: apiApplicationUrl + '/applications/createapplication/' + id
    }).then(function (response){
        $scope.student = response.data.student
        $scope.applications = response.data.applications
    },function (error){
        console.log(error);
    });
}]);

studentApp.controller('updateApplicationCtrl', ['$scope', '$http', function($scope, $http){
    $scope.update = function(student) {
        let data = student
        console.log(data)
        let message = ''
        $http({
            method: 'PATCH',
            data: data,
            url: apiApplicationUrl + '/students/' + student.id,
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

studentApp.controller('updateCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){
    $scope.update = function(student) {
        let data = student
        let message = ''
        let id = $routeParams.id
        $http({
            method: 'PUT',
            data: data,
            url: apiUrl + '/students/' + id
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

studentApp.controller('deleteCtrl', ['$scope', '$http', function($scope, $http){
    $scope.delete = function(student) {
        let studentId = student.id
        $http({
            method: 'DELETE',
            url: apiUrl + '/students/' + studentId
        }).then(function (response) {
            let index = $scope.students.findIndex( student => student.id === studentId)
            $scope.students.splice(index, 1)
        }, function (error) {
            console.log(error);
        });
    }
}]);