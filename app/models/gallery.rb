class Gallery < ApplicationRecord
  belongs_to :place

  validates :name, presence: true
  validates :image, presence: true
end
