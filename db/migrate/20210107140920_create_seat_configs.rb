class CreateSeatConfigs < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_configs do |t|
      t.references :category, null: false, foreign_key: true
      t.integer :seats_per_row
      t.integer :no_of_rows
      t.integer :exceptions

      t.timestamps
    end
  end
end
