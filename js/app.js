;(function(window, angular) {

  'use strict';

  // Application module
  angular.module('app', ['ui.router'])

	// Application config
  .config([
    '$stateProvider', 
    '$urlRouterProvider', 
    function($stateProvider, $urlRouterProvider) {
      
      $stateProvider
        .state('home', {
          url: '/',
          templateUrl: './html/home.html',
          controller: 'homeController'
        })
        .state('termekek', {
          url: '/termekek',
          templateUrl: './html/termekek.html',
          controller: 'eszkozokController'
        })
        .state('contact', {
          url: '/contact',  
          templateUrl: './html/contact.html',
          controller: 'contactController'
        });
      
      $urlRouterProvider.otherwise('/');
    }
  ])

  // Home controller
  .controller('homeController', [
    '$scope',
    function($scope) {
      console.log('Controller: home');
    }
  ])

  // eszkozok controller
  .controller('termekekController', [
    '$scope',
    function($scope) {
      fetch('./php/termekek.php')
      .then(function(response) {
        return response.json();
      })
      .then(function(data) {
        $scope.data = data;
        $scope.$applyAsync();
      })
      .catch(function(error) {
        console.log(error);
      })
    },
  ])  
  
  // Contact controller
  .controller('contactController', [
    '$scope',
    function($scope) {
      console.log('Controller: contact');
    }
  ]);
})(window, angular);