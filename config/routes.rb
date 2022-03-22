Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :records
      resources :artists
    end
  end

  post "/refresh" => 'refresh#create'
  post "/signin" => 'signin#create'
  post "/signup" => 'signup#create'
  delete "/signout" => 'signin#destroy'

end
