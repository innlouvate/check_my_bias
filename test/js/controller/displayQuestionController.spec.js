describe('DisplayQuestionController', function() {

  var ctrl, httpBackend;

  beforeEach(function() {
    console.log('1st before');
    module('biasQuestionnaire');
  });

  beforeEach(function() {
      console.log('got here');
    inject(function($controller, $httpBackend) {
      ctrl = $controller('DisplayQuestionController');
      httpBackend = $httpBackend;
      console.log(httpBackend);
      console.log(ctrl);
      httpBackend
        .expectGET("assets/test.json")
        .respond({questionName: "Q1"});
    });
  });


  it('gets the list of test questions and passes it as json', function(){
    httpBackend.flush();
    expect(ctrl.questions).toEqual({questionName: 'Q1'});
  });

});
