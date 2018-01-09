Rails.application.routes.draw do
  root "sherry#index"
  get 'sherry/index'
  get 'sherry/projects', to: "sherry#index", as: "projects"

end
