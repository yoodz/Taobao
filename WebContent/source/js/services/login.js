define(['modules/service'], function(app) {
     return app.factory('loginService', [
    'Restangular', function(Restangular) {
        var loginService;
        loginService = Restangular.all('/page/user');
        loginService.validation = function (params) {
            console.log(params);
            return this.customPOST(params, "validate");
        };
        return loginService;
    }]);
});