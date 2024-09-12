# frozen_string_literal: true

Rails.application.routes.draw do
  resources :equipments, only: %i[index show create destroy]
end
