# config/routes.rb

Rails.application.routes.draw do
  root 'bingo_numbers#index'
  resources :bingo_numbers, only: [:index] do
    member do
      patch :mark
    end
    collection do
      patch :clear
    end
  end
end
