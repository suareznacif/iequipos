Iequipos::Application.routes.draw do
  get "inicio/index"
  resources :inventarios
  root 'inicio#index'
end
