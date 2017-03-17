Rails.application.routes.draw do
  root to: 'pages#home'
  get 'stag-hill', to: 'pages#stag_hill'
end
