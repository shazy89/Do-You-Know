class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
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
