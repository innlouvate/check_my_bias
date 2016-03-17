(function() {
    'use strict';

    angular
      .module('biasQuestionnaire')
      .controller('DisplayQuestionController', function($http) {
      var self = this;

      $http.get('assets/test.json').success(function(data){
        self.questions = data;
        console.log(data);
      });

      self.displayAnswerText = displayAnswerText();

      function displayAnswerText(index) {
        self.questionIndex = index;
      }

      // self.recordAnswers = recordAnswers();
      //
      // function recordAnswers() {
      //   var data = {"answer": self.answer};
      //   $http.post('assets/test.json', data, JSON)
      //     .success(function ( data, status, header, JSON ) {
      //     })
      //     .error(function ( data, status, header, JSON ) {
      //     });
      //     console.log(data);
      //   }


  });
}());
