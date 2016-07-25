class AddPriceToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :price, :integer, :default => 100
  end
end
