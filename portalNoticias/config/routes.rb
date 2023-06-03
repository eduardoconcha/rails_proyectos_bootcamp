Rails.application.routes.draw do
  get "/technology", to: 'news#index'
  get "/pruducts", to: 'news#prod'
  get  "/noticias", to: 'news#noticias'
  get "/cv", to: 'news#cv'
 end