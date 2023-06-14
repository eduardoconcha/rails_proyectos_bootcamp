Rails.application.routes.draw do
  get 'journalists/index'
  get 'journalists/create'
  get 'journalists/new'
  
  post 'journalists' => "journalists#create"



  #Rutas get

 get 'posts/index'
 get 'posts/create'
 get 'posts/new'


 #Rutas Post

 post "posts" => "posts#create"
end
