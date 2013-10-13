require 'spec_helper'

feature "User checkboxes to sort deals" do
  VCR.use_cassette("hotels", :record => :new_episodes) do

    before do
  	    visit '/'
    end

    scenario "Select and unselect only Great Value", :js => true do
  	  page.find(:css, '[name=GreatValue]').click
  	  page.should_not have_css('div.low-val')
  	  page.find(:css, '[name=GreatValue]').click
  	  page.should have_css('div.low-val')
    end

    scenario "Select and unselect only Top Rated", :js => true do
  	  page.find(:css, '[name=TopRated]').click
  	  page.should_not have_css('div.low-star')
  	  page.find(:css, '[name=TopRated]').click
  	  page.should have_css('div.low-star')
    end

    scenario "Select and unselect both Great Value and Top Rated", :js => true do
  	  page.find(:css, '[name=TopRated]').click
  	  page.find(:css, '[name=GreatValue]').click
  	  page.should_not have_css('div.low-star')
  	  page.should_not have_css('div.low-val')

  	  page.find(:css, '[name=TopRated]').click
  	  page.find(:css, '[name=GreatValue]').click
  	  page.should have_css('div.low-val')
  	  page.should have_css('div.low-star')
    end

  end
end

