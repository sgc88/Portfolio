Rails.application.routes.draw do
  root "sherry#index"
  get 'sherry/index'
  get 'sherry/projects'
  
end
