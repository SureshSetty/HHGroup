
var hhRoot = angular.module('hhgroup', ['ngRoute']);

// Register the routing for the application
hhRoot.config(['$routeProvider', '$locationProvider', '$httpProvider',
function ($routeProvider, $locationProvider, $httpProvider) {
    $routeProvider.
        when('/home', { templateUrl: '/Content/views/home.html', controller: 'home-controller' }).
     otherwise({
         redirectTo: '/home'
     });

}]);

