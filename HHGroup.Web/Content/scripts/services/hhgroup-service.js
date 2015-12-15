hhRoot.service("HHGroupService", ['$http', '$q', function ($http, $q) {
    return {
        GetCMSData: function (serviceUrl, request) {
            var deferred = $q.defer();
           
            $http.post(serviceUrl, request).success(deferred.resolve).error(deferred.reject);
          
            return deferred.promise;
        }
    }
}]);
