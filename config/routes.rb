# frozen_string_literal: true

Rails.application.routes.draw do
  resources :equipments, only: [:index] do
    collection do
      get 'shields', to: 'equipments#shields'
      get 'weapons', to: 'equipments#weapons'
    end
  end
end
