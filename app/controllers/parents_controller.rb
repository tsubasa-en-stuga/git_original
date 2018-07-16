class ParentsController < ApplicationController
  def show

  end

  def index

  end

  def new
    @images = Imege.new
  end
  
  def user_params
    params.requier(:user).permit(:name, :image)
  end
  
end
