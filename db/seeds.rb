# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# %w[erdo semra zirli floki miyu].map do |element|
#   @user = User.create(username: element, password: 'shazy123')
#   @progress = Progress.create(user_id: @user.id)
#   @progress.progress_types.create(question_category: 'countries')
# end

@question =
  SingleQuestion.create(
    question: 'Jamaica is closest to which state in the U.S.?',
    status: 'pending',
    correctAnswer: 'Florida',
    link:
      'https://en.wikipedia.org/wiki/Denmark#:~:text=European%20Denmark%2C%20which%20is%20the,and%20the%20North%20Jutlandic%20Island.',
    info:
      'The air travel (bird fly) shortest distance between Jamaica and United States is 2,769 km= 1,721 miles. If you travel with an airplane (which has average speed of 560 miles) from Jamaica to United States, It takes 3.07 hours to arrive.',
    questionType: 'countries',
  )
QuestionOption.create(
  optionOne: 'New York',
  optionTwo: 'New Jersey',
  optionThree: 'Texas',
  optionFour: 'Florida',
  single_question_id: @question.id,
)
