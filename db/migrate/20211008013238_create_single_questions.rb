class CreateSingleQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :single_questions do |t|
      t.string :question
      t.string :status
      t.string :correctAnswer
      t.string :link
      t.string :info
      t.string :questionType

      t.timestamps
    end
  end
end
