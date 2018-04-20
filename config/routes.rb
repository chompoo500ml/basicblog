Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      resources :articles
    end
  end
end
