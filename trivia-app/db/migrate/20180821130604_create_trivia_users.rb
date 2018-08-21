class CreateTriviaUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :trivia_users do |t|
      t.integer :user_id
      t.integer :trivia_id
      t.timestamps
    end
  end
end
