
var hhRoot = angular.module('hhgroup', ['ngRoute']);

// Register the routing for the application
hhRoot.config(['$routeProvider', '$locationProvider', '$httpProvider',
function ($routeProvider, $locationProvider, $httpProvider) {
    $routeProvider
        .when('/home', { templateUrl: '/Content/views/home.html', controller: 'home-controller' })
        .when('/about', { templateUrl: '/Content/views/about.html', controller: 'home-controller' })
        .when('/contact', { templateUrl: '/Content/views/contact.html', controller: 'home-controller' })
        .otherwise({
             redirectTo: '/home'
        });

}]);

