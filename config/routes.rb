Rails.application.routes.draw do
  root to: 'pages#home'
  get 'stag-hill', to: 'pages#stag_hill'
  get 'ash-grove', to: 'pages#ash_grove'
  get 'southway', to: 'pages#southway'
end
