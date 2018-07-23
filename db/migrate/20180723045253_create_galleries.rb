class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name, default: ''
      t.string :image, default: ''
      t.text :description, default: ''
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
