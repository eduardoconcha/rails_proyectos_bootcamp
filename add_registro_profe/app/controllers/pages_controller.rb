class PagesController < ApplicationController
  def index
  end
  def create
    User.create(name: params[:name], age:params[:age]) 
  end
    
end
