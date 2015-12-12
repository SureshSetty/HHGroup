hhRoot.service("HHGroupService", ['$http', '$q', function ($http, $q) {
    return {
        GetCMSData: function (CountryID, PageName, urll) {
            var deferred = $q.defer();
            //$http.get(url, CountryID, PageName).success(deferred.resolve).error(deferred.reject);
            $http({
                url: urll,
                method: "GET",
                data: { CountryID: CountryID, PageName: PageName }
            });

            return deferred.promise;
        },
    }
}]);

//hhRoot.factory("HHGroupService", ["$http", function ($q) {
//    return {
//        GetCMSData: function (CountryID, PageName, apiUri) {
            
//            var deferred = $q.defer();
//            deferred.resolve(dummyResponse);
//            return deferred.promise;
//        }
//    }
//}]);