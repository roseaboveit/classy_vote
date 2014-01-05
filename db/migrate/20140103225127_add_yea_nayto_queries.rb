class AddYeaNaytoQueries < ActiveRecord::Migration
  def change
  	add_column :queries, :yea, :integer
  	add_column :queries, :nay, :integer
  end
end
