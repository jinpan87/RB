app.controller("tableController",function($scope, indexService){
	$scope.users = indexService.getUser();
});