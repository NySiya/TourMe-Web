class Place < ApplicationRecord
  belongs_to :country
  has_many :gallery, dependent: :destroy
  has_many :place_categories
  has_many :categories, through: :place_categories
end
