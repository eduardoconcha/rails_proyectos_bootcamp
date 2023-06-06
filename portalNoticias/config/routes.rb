Rails.application.routes.draw do
  get 'reptiles/iguana'
  get 'pages/index'
  get 'pages/about'
  get 'pages/deporte'
  get 'pages/technology'


  get "/technology", to: 'news#index'
  get "/pruducts", to: 'news#prod'
  get  "/noticias", to: 'news#noticias'
  get "/cv", to: 'news#cv'
  get "/students", to: "students#index"
  
 end