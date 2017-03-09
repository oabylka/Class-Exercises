Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get"/query_params" => "params#query_params"
  get"/guess" => "params#guess"
end
