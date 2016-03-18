(function() {
    'use strict';

    angular
      .module('biasQuestionnaire.questions', [])
      .controller('DisplayQuestionController', function($http) {
      var self = this;

      $http.get('http://localhost:3000/questions').success(function(data){
        self.questions = data;
      });

      self.recordAnswers = function(questionID, answerID) {
        var data = JSON.stringify({"answer_id": answerID});
        $http.post('http://localhost:3000/questions/'+questionID+'/responses', data, JSON)
          .success(function ( data, status, header, JSON ) {
          })
          .error(function ( data, status, header, JSON ) {
          });
        console.log(data);
      }

  });
})();
