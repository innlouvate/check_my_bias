describe('DisplayQuestionController', function() {

  var ctrl, $httpBackend;

  beforeEach(module('biasQuestionnaire'));

  beforeEach(inject(function(_$controller_, _$httpBackend_) {
      console.log('running injector');
      console.log('controller: ' + _$controller_);
      $controller = _$controller_;
      $httpBackend = _$httpBackend_;
      $httpBackend
        .expectGET("http://localhost:3000/questions")
        .respond({questionName: "Q1"});

      ctrl = $controller('DisplayQuestionController');

      console.log('ctrl: ' + ctrl);

      console.log('no problems in the injector');
    }));


  it('gets the list of test questions and passes it as json', function(){
    console.log('running the test');
    console.log('httpBackend (in the test): ' + $httpBackend);
    $httpBackend.flush();
    expect(ctrl.questions).toEqual({questionName: 'Q1'});
  });

});
