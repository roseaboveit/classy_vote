class CreateQueryUsers < ActiveRecord::Migration
  def change
    create_table :query_users, :id => false do |t|
    	t.integer :query_id
    	t.integer :user_id
    end
  end
end
