class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name, default: ''
      t.text :description, default: ''
      t.string :cover_image, default: ''

      t.timestamps
    end
  end
end
