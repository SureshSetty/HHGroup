hhRoot.controller('home-controller', ['$scope', 'HHGroupService', function ($scope, HHGroupService) {
    //$scope.Header = "H&H Group";

    HHGroupService.GetCMSData(1, "", "api/hhgroupapi/getcmsdata").then(function (response) {
        $scope.CMSModel = response;
    });
}]);
