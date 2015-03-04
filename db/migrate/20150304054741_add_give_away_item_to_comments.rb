class AddGiveAwayItemToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :give_away_item, index: true
    add_foreign_key :comments, :give_away_item
  end
end
