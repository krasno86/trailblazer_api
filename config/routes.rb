# frozen_string_literal: true

Rails.application.routes.draw do
  # namespace :api do
  namespace :v1 do
    resources :projects do
      resources :tasks do
        resources :comments, only: %i[index create destroy]
      end
    end
  end
  # end
  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
             },
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }
end
