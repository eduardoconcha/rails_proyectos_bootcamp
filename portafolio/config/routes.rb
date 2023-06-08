Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "portafolio#home"
  get "/projects", to: "portafolio#projects"
  get "/contact", to: "portafolio#contact"
  get "/gracias", to: "portafolio#gracias"
end
