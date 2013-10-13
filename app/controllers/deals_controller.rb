class DealsController < ApplicationController

  def index
  	@response = HTTParty.get('http://deals.expedia.com/beta/deals/hotels.json')
  end

end
