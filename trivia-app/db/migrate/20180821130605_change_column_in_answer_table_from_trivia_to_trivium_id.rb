class ChangeColumnInAnswerTableFromTriviaToTriviumId < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :trivia_id, :trivium_id
  end
end
