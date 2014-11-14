Rails.application.routes.draw do
  resources :scholarships
  root 'scholarships#index'
end

