class Country < ApplicationRecord
  has_many :places, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
