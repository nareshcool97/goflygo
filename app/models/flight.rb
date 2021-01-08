class Flight < ApplicationRecord
  belongs_to :plane
  belongs_to :from, class_name: "Airport"
  belongs_to :to, class_name: "Airport"
  has_many :bookings
  enum status: [:active, :on_flight, :done, :cancelled]

  after_save :update_pnrs


  def to_fro
    "#{self.from.name}- #{self.to.name}"
  end


  def update_pnrs

    # self.seat_configs.each do |sa|
    # end
  end
end
