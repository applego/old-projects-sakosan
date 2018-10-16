Rails.application.routes.draw do
  get "/omikuji",to:"omikujis#index"
end
