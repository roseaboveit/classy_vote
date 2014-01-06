class CreateQueryUsers < ActiveRecord::Migration
  def change
    create_join_table :query, :users do |t|
  		t.index :query_id
  		t.index :user_id
	end
  end
end
