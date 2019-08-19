class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :location
      t.date :checkin
      t.date :checkout
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :governess, foreign_key: true

      t.timestamps
    end
  end
end
