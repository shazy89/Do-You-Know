class CreateProgressTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :progress_types do |t|
      t.integer :progress_id
      t.string :type
      t.integer :questionNumber
      t.integer :correctAnswers
      t.integer :lastQuestionId

      t.timestamps
    end
  end
end
