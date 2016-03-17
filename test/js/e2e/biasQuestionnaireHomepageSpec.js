describe('biasQuestionnaire homepage', function () {

  beforeEach(function () {
    browser.get('http://localhost:3000/');
    var questions = element.all(by.css('.questionContent'));
  });

  it ("should display the list of questions", function() {
    var questions = element.all(by.css('.questionContent'));
    expect(questions.first().getText()).toContain("Q1");
    expect(questions.last().getText()).toContain("Q4");
    expect(questions.count()).toBe(4);
  });

  it ("should display the answers for each question", function() {
    var q1Answers = element.all(by.css('#question1')).all(by.css('.answer'));
    var q2Answers = element.all(by.css('#question2')).all(by.css('.answer'));
    expect(q1Answers.first().getText()).toContain("Q1-A1");
    expect(q1Answers.last().getText()).toContain("Q1-A4");
    expect(q1Answers.count()).toBe(4);
    expect(q2Answers.first().getText()).toContain("Q2-A1");
    expect(q2Answers.last().getText()).toContain("Q2-A4");
    expect(q2Answers.count()).toBe(4);
  });

  it ("should only display the answer under the answer button after it has been selected", function() {
    var q1Answers = element.all(by.css('#question1')).all(by.css('.answer'));
    var answerTexts = element.all(by.css('.answerText'));
    //test that all buttons are hidden
    for(var i=0; i<answerTexts.length; i++) {
      expect(answerTexts[i].getText()).toEqual("");
    }
    //test that clicking on the first button shows the answer test
    q1Answers.first().click();
    expect(answerTexts.first().getText()).toContain("Q1-A1-Text");
    //test that clicking on the first button does not cause the other buttons to display answer text
    for(var j=1; j<answerTexts.length; j++) {
      expect(answerTexts[j].getText()).toEqual("");
    }
    //click off the first answer button hides the text again
    q1Answers.first().click();
    expect(answerTexts.first().getText()).not.toContain("Q1-A1-Text");
  });


});
