class DropSearches < ActiveRecord::Migration[7.0]
  def change
    drop_table :searches
  end
end
