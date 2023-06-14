class JournalistsController < ApplicationController
  def index
  @journalist = Journalist.all
  end
  def new
  #Captura los datos enviados en el formulario
  @journalist = Journalist.new
  end
  def create
  @journalist = Journalist.new(journalist_params)
  if @journalist.save
  redirect_to journalists_index_path
  else
  render :new
  end
  end
  private
  def journalist_params
  params.require(:journalist).permit(:name, :lastname, :speciality)
  end
  end
  
