define(['angular', 'angular-ui-router', 'angular-resource', 'controllers/student'], function(angular) {
  var studentModule = angular.module("studentModule", ['controller',
    'ui.router', 'service'], angular.noop);
   studentModule.config([
    "$stateProvider", "$urlRouterProvider", function($stateProvider, $urlRouterProvider) {
      $urlRouterProvider.otherwise("/step2");
      return $stateProvider.state("step2", {
        url: "/step2",
        templateUrl: "../../source/html/student/select-work.html"
      }).state("step3", {
        url: "/step3",
        templateUrl: "../../source/html/student/manger-information.html"
      });
    }
  ]);
  studentModule.run(function($rootScope, $state, $stateParams) {
  $rootScope.$state = $state;
  return $rootScope.$stateParams = $stateParams;
  });
  return studentModule;
});
