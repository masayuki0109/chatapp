Rails.application.routes.draw do
  get 'rooms/show'
  delete 'rooms/show', to: 'rooms#delete'
end
