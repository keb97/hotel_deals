class DealsController < ApplicationController

  def index
  	@response = HTTParty.get('http://deals.expedia.com/beta/deals/hotels.json')
  end

  def search
  	@response = @response.select {|i| i["totalRate"] < 30}
  end	

end
