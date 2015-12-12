hhRoot.service("HHGroupService", ['$http', '$q', function ($http, $q) {
    return {
        GetCMSData: function (CountryID, PageName, urll) {
            var deferred = $q.defer();
            //$http.get(url, CountryID, PageName).success(deferred.resolve).error(deferred.reject);
            $http
                ({
                    url: urll,
                    method: "GET",
                    params: { countryID: CountryID, pageName: PageName }
                }).success(deferred.resolve).error(deferred.reject);

            return deferred.promise;
        },
    }
}]);
