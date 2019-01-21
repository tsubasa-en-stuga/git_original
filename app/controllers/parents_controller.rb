class ParentsController < ApplicationController

  def index
  end

  def show
    if current_user.id == params[:id].to_i
      @user = current_user
    else
      redirect_to root_path
    end
  end

  def create
    current_user.images.create(image_params)
    redirect_to parent_path
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
