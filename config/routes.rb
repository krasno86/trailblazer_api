# frozen_string_literal: true

Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  # namespace :api do
    namespace :v1 do
      resources :projects do
        resources :tasks do
          resources :comments, only: %i[index create destroy]
        end
      end
    end
  # end
end
