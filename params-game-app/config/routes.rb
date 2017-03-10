Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get"/query_params" => "params#query_params"
  #get"/guess" => "params#guess"
  get"/form" =>"params#form"
  post"/form_result" => "params#form_result"

  #get"/form" => "params#form"
  #post"/form_result" => "params#form_result"
end
