class ParentsController < ApplicationController
  def show
    @user = current_user
  end

  def create
    image = current_user.images.create(image_params)
  end
  
  
  private
  def image_params
    params.require(:image).permit(:image, :avatar)
  end
  
end
