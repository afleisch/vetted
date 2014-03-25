var vetted = vetted || {}
vetted.VettedApp = angular.module("VettedApp", ['ui.bootstrap', 'ui.utils']);

vetted.SimpleController = function($scope, $http){
  $http.get('/profiles/1.json').
    success(function(data){
      $scope.things = data
    });

};