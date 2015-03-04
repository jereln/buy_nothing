class GiveAwayItem < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  mount_uploader :give_away_item_image, GiveAwayItemImageUploader
  has_many :comments
end
