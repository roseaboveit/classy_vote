class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :query_id
      t.string :answer
      t.integer :votes
    end
  end
end
