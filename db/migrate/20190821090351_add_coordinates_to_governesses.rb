class AddCoordinatesToGovernesses < ActiveRecord::Migration[5.2]
  def change
    add_column :governesses, :latitude, :float
    add_column :governesses, :longitude, :float
  end
end
