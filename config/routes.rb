Rails.application.routes.draw do
  get 'rooms/show'
  get 'rooms/index', to: 'rooms#index'
  delete 'rooms/show', to: 'rooms#delete'
end
