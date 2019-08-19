class CreateGovernesses < ActiveRecord::Migration[5.2]
  def change
    create_table :governesses do |t|
      t.integer :price
      t.text :description
      t.string :location
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
