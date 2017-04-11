Rails.application.routes.draw do
  root to: 'pages#home'
  get 'stag-hill', to: 'pages#stag_hill'
  get 'ash-grove', to: 'pages#ash_grove'
  get 'southway', to: 'pages#southway'
  get 'properties', to: 'pages#properties'
  get 'testimonials', to: 'pages#testimonials'
  get 'rates', to: 'pages#rates'
  get 'links', to: 'pages#links'
  get 'contact-us', to: 'pages#contact_us'
  get 'vacancies', to: 'pages#vacancies'
  get 'faqs', to: 'pages#faqs'
end
