Rails.application.routes.draw do
    get "/form_practice",to:"forms#form_test"
    post "/create",to:"forms#input_age"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
