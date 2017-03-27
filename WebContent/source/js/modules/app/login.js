define(['angular', 'controllers/login'], function(angular) {
  var loginModule = angular.module("loginModule", ['controller', 'service'], angular.noop);
  return loginModule;
});
