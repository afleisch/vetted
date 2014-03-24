var vetted = vetted || {}
vetted.VettedApp = angular.module("VettedApp", []);

vetted.SimpleController = function($scope, $http){
  $http.get('/profiles/1.json').
    success(function(data){
      $scope.things = data;

    });

};