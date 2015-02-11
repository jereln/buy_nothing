class CreateGiveAwayItems < ActiveRecord::Migration
  def change
    create_table :give_away_items do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
