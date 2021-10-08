class CreateQuestionOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :question_options do |t|
      t.string :optionOne
      t.string :optionTwo
      t.string :optionThree
      t.string :optionFour
      t.integer :questionId

      t.timestamps
    end
  end
end
