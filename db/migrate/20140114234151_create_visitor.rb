class CreateVisitor < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
    	t.string :ip
    	t.integer :visits
    	t.integer :page_views
    end
  end
end
