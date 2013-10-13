class DealsController < ApplicationController

  def index
  	response = HTTParty.get('http://deals.expedia.com/beta/deals/hotels.json')
    @response = response.sort_by { |d| -d["rawAppealScore"]}
  end

end
