Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/fortune" => "predictions#fortune"
  get "/lottery" => "predictions#lottery"
  get "/visit" => "predictions#visit"
  get "/ninety_nine" => "predictions#ninety_nine"
  get "/people" => "predictions#people"
end
