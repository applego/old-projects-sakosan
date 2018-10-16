Rails.application.routes.draw do
    get "/plus",to:"calcs#index"
    post "/calc_plus",to:"calcs#plus"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
