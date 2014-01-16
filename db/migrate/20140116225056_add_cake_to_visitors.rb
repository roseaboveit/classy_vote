class AddCakeToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :cake, :integer
  end
end
