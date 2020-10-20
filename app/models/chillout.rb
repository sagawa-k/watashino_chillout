class Chillout < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  enum category: { spot: 0, book:1, music:2 }
end
