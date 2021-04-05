Rails.application.routes.draw do
  resources :flights

  root to: redirect('/flights')
end
