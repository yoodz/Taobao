define([ 'modules/controller','angular', 'services/student'], function(controller) {
  return controller.controller('studentController', [
    '$scope','studentService', function($scope) {
    	$scope.greeting = 'this is the student page';
      
    }
  ]);
});
