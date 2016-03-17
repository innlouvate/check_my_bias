angular
  .module('biasQuestionnaire', [
  'templates',
  'ngRoute'

]).config(['$routeProvider', '$locationProvider',
function ($routeProvider, $locationProvider) {
   $routeProvider
     .when('/', {
       templateUrl: 'home.html',
       controller: 'HomeController'
     })
     .when('/quiz', {
       templateUrl: 'quiz.html',
       controller: 'DisplayQuestionController'
     });
    //  .otherwise({
    //    redirectTo: '/'
    //  });
     $locationProvider.html5Mode({
       enabled: true,
       requireBase: false,
       rewriteLinks: false
     });
 }]);
