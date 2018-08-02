class ParentsController < ApplicationController
  def index
  end

  def show
    @user = current_user
  end

  def create
    image = current_user.images.create(image_params)
    redirect_to parent_path
  end
  
  private
  def image_params
    params.require(:image).permit(:image)
  end
  
end
