define([ 'modules/controller', 'angular', 'services/login'], function(controller) {
  return controller.controller('loginController', [
    '$http','$scope', 'loginService', '$window', function($http, $scope, loginService, $window) {
      var vm = this;
      var result = "";
      vm.hello = "hehe";
      vm.validation = function () {
        vm.userData = {
          userName : vm.userName,
          password : vm.password
        }
        return loginService.validation(vm.userData).then(function(result) {
          vm.isSuccess = result.data;
          if (vm.isSuccess) {
            var url = '../student/select';
            return $window.location.href = url;
           } else {
             alert("请重新输入密码")
           }
        });
      };
      return vm;
    } 
  ]);
});
