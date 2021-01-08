json.extract! booking, :id, :flight_id, :price, :user_id, :name, :no_of_seats, :total, :created_at, :updated_at
json.url booking_url(booking, format: :json)
