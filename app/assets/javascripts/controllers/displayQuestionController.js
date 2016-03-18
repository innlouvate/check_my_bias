(function() {
    'use strict';

    angular
      .module('biasQuestionnaire')
      .controller('DisplayQuestionController', function($http) {
      var self = this;

      $http.get('http://localhost:3000/questions').success(function(data){
        self.questions = data;
      });

      self.displayAnswerText = displayAnswerText();

      function displayAnswerText(index) {
        self.questionIndex = index;
      }

      self.recordAnswers = function(answerID) {
        var data = JSON.stringify({"answer_id": answerID});
        // var data;
        $http.post('http://localhost:3000/questions/1/responses', data, JSON)
          .success(function ( data, status, header, JSON ) {
          })
          .error(function ( data, status, header, JSON ) {
          });
        console.log(data);
      }

  });
})();
