class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :plane, null: false, foreign_key: true
      t.integer :from_id
      t.integer :to_id
      t.string :available_pnrs
      t.string :booked_pnrs
      t.string :flight_no
      t.integer :price

      t.timestamps
    end
  end
end
