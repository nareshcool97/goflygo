class AddDateTimeToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :flight_date, :datetime
  end
end
