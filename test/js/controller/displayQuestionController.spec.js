describe('DisplayQuestionController', function() {

  var ctrl, scope, httpBackend;

  beforeEach(function(){
    module('biasQuestionnaire');
  });

  beforeEach(function() {
    inject(function($controller, $rootScope, $httpBackend) {
      ctrl = $controller('DisplayQuestionController');
      scope = $rootScope;
      httpBackend = $httpBackend;
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
