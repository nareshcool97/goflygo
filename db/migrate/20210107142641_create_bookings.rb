class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :no_of_seats
      t.integer :total

      t.timestamps
    end
  end
end
