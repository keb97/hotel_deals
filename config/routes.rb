HotelDeals::Application.routes.draw do
  get '/deals', :to => 'deals#index', :as => 'deals'
  root 'deals#index'
end
