class ChangeTriviasTableToTrivia < ActiveRecord::Migration[5.2]
  def change
    rename_table :trivias , :trivia
  end
end
