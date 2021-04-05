class FlightsController < ApplicationController
  def index
    @available_dates = Flight.pluck(:departure).uniq.map do |date|
      [date, date.strftime("%d/%m/%y")]
    end
  end
end
