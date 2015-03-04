class AddGiveAwayItemImageToGiveAwayItems < ActiveRecord::Migration
  def change
    add_column :give_away_items, :give_away_item_image, :string
  end
end
