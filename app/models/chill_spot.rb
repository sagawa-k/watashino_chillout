class ChillSpot < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user
  validates :name, presence: true, length: { maximum: 255 }

  mount_uploader :spot_image, ImageUploader
end
