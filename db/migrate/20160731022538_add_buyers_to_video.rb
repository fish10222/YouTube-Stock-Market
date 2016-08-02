class AddBuyersToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :buyers, :string
  end
end
