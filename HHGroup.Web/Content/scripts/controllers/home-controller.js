hhRoot.controller('home-controller', ['$scope', '$rootScope', '$http', 'HHGroupService', function ($scope, $rootScope, $http, HHGroupService) {
    //$scope.Header = "H&H Group";

    //HHGroupService.GetCMSData(1, "Home", "api/hhgroupapi/getcmsdata").then(function (response) {
    //    $scope.CMSModel = response;
    //});

    var countryID = 1
    var pageName = "";
    $http.get("/home/getcmsdata?countryID=" + countryID + "&pageName=" + pageName)
        .success(function (data, status, headers, config)
        {
            $rootScope.CMSModel = data;
        })
        .error(function (data, status, header, config)
        {
            
        });
}]);
