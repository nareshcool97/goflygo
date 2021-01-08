class AddColumnStatusToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :status, :integer
  end
end
