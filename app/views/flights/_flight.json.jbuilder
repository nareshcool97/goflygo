json.extract! flight, :id, :plane_id, :from_id, :to_id, :available_pnrs, :booked_pnrs, :flight_no, :price, :created_at, :updated_at
json.url flight_url(flight, format: :json)
