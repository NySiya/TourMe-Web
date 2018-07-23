class Place < ApplicationRecord
  belongs_to :country
  has_many :place_categories
  has_many :categories, through: :place_categories
  has_many :galleries, dependent: :destroy

  accepts_nested_attributes_for :galleries, reject_if: :all_blank, allow_destroy:true

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :cover_image, presence: true
end
