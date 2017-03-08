Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/view_contact" => "contacts#view_contact"
  get "/view_all" => "contacts#view_all"
end
