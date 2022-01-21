# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :users, only: [:index] do
        member do
          get :feed
          get :balance
        end
        resources :payments, only: [:create]
      end
    end
  end
end
