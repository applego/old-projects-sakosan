Rails.application.routes.draw do
  get "/aisatsu",to:"greets#hello"
  get "/name",to:"greets#myname"
  get "/ichi",to:"numbers#one"
  get "/memo",to:"memos#index"
  get "/user",to:"users#index"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
