class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'from_airport_id'
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'to_airport_id'

  def departure_date
    departure.strftime("%d/%m/%y")
  end

  def departure_time
    departure.to_s(:time)
  end

  def arrival
    departure + duration.hours
  end

  def arrival_date
    arrival.strftime("%d/%m/%y")
  end

  def arrival_time
    arrival.to_s(:time)
  end

  def name
    "From: #{from_airport.code} to: #{to_airport.code} Departure: #{departure_date} at #{departure_time} Arrival: #{arrival_date} at #{arrival_time}"
  end
end
