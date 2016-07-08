class AddCapitalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :capital, :integer, :default => 100000
  end
end
