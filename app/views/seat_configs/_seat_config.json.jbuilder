json.extract! seat_config, :id, :category_id, :seats_per_row, :no_of_rows, :exceptions, :created_at, :updated_at
json.url seat_config_url(seat_config, format: :json)
