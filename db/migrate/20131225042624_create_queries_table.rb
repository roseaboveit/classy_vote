class CreateQueriesTable < ActiveRecord::Migration
  def change
    create_table(:queries) do |t|
      t.text :question
    end
  end
end
