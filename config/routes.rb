# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'api/v1/swords#index'

  namespace :api do
    namespace :v1 do
      resources :swords
    end
  end
end
