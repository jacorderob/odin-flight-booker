class FlightsController < ApplicationController
  def index
    @available_dates = Flight.pluck(:departure).uniq.map do |date|
      [date.strftime("%d/%m/%y"), date.to_date]
    end
    puts params
    if params[:flight]
      @flights = Flight.where({
        from_airport_id: params[:from_airport_id],
        to_airport_id: params[:to_airport_id],
        departure: params[:departure].to_datetime..params[:departure].to_datetime + 1.day
      })
    end
  end
end
