Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello_url" => "pages#hello_method"
  get "/show_songs" => "pages#show_songs"
  get "/play_game" => "pages#play_game"
  get "/contact" => "pages#contact_method"
  get "/about" => "pages#about"
end
