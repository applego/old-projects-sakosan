Rails.application.routes.draw do
    get "/names",to:"users#index"
    post "/create",to:"users#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
