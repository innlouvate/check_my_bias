# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


questions = ["Which of these statements could be an example of maternal bias?\n'She is not in her office. She must be home with her baby—again.'\n'I'm surprised he's asked for paternity leave, none of the other guys in the team have ever asked for this, and it is a pretty busy time at the moment'", "When assessing candidates for a promotion, the following statements are made:\n'Jessica is really talented, but I wish she would be less abrasive. She comes on too strong.'\n'Steve is an easy case, smart and great to work with. He needs to learn to be a little more patient, but we all do, right?'\nIs there an issue here?", "Which of the following characteristics do you most associate with good management", "Job Advert - Chuck Norris Developer\n'We need people who are insanely smart. And Fast. And Enthusiastic. We need developers who are not entrenched, Devs who will not rest until it is just right. We are looking for people who can write code that optimizes itself, who can solve the Towers of Hanoi in one move. Someone who can write an infinite recursion... and have it return! In short, we are looking for the Chuck Norris of developers, are you that person?'\nIs this a good job advert?"]


answers_one = ["Neither really, if a woman has a baby then the most logical explanation for her being out the office is that she's looking after the baby. It's also not unreasonable for people to be surprised by men taking paternity leave - particularly when it's often easier for women to do so.", "So I think it's bad that there's an assumption that the woman is clearly going to be at home with her baby, but I don't think the second example is really an example of bias - it's just a reflection of the reality that most men don't choose to take maternity leave.", "The first statement is pretty bad, there's plenty of other places she could be a statements like this are a very insidious way of undermining her competence and commitment. I'm not sure about the second statement, but if anything it's an example of bias against men, not women.", "Both statements are bad and reinforce traditional gender roles - by undermining the competence of women who are mothers, and simultaneously creating a climate when men don't feel comfortable taking on more childcare responsibilities. it's really important that both situations are challenged." ]

answers_two = ["There's no issue here, they're talking about two people with different personality types and styles, surely equality is about judging people based on their own merit?", "I guess it's a shame that Jessica is being perceived negatively when it seems that she's very good at her job - but at the end of the day you want to work with people that you get on with. A team that meshes well is a more productive team.", "Maybe there's a problem here, Steve most positive attribute seems to be that he's easy to get on with, but there's a couple of things that suggests he's not as good as his job as Jessica is. Is he really going to be producing better work?", "This is problematic because it seems that the same characteristic - i.e being assertive - is perceived negatively when being exhibited by a woman, but is being judged as less of a problem when being exhibited by a man."]

answers_three = [ "Analytical Ability, Intuitive, Helpful",  "Self Confident, Industrious, Assertive",  "Curious, Creative, Organised",  "Consistent, Logical, Understanding"]

answers_four = ["This is great, they're looking for someone who can step up and take responsibility, and the advert does a good job of communicating the characteristics of the ideal individual - and the focus is ultimately on programming skills.", "It's quite bad and suggests there could be a 'work hard, play hard' culture that would be off-putting for anyone with a family - particularly the reference to 'not resting until it's right.", "It's not a brilliant job advert because its not clear about what specific skills they're looking for - which could mean they haven't really thought through what they want this individual to do.", "This is bad, the Chuck Norris of developers? I don't know how much more clearly they could have communicated that they're only looking for men to apply for this role." ]

answers = [answers_one, answers_two, answers_three, answers_four]

questions.each do |question|
  Question.create!(content: question)
end

answers_array.each do |answers_block|
  answers_block.each do | answer |
    Answer.create!(content: answer, question_id: (answers_array.index(answers_block) + 1))
  end
end
