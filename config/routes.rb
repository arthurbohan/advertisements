Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :advertisements do
    member do
      patch 'add'
      patch 'cancel'
      patch 'approve'
      patch 'publish'
      patch 'archive'
    end
  end

end
