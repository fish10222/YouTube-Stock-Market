class AddPurchasesToUser < ActiveRecord::Migration
  def change
    add_column :users, :purchases, :string
  end
end
