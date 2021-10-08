class CorrectTheId < ActiveRecord::Migration[6.0]
  def change
    rename_column :question_options, :question_options_id, :single_question_id
  end
end
