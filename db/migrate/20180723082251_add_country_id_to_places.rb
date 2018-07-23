class AddCountryIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :country, foreign_key: true
  end
end
