class Country < ApplicationRecord
  has_many :places, dependent: :restrict_with_error
end
