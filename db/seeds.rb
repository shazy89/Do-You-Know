# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[erdo semra zirli floki miyu].map do |element|
  @user = User.create(username: element, password: 'shazy123')
  @progress = Progress.create(user_id: @user.id)
  @progress.progress_types.create(question_category: 'countries')
end
