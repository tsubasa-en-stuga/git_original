class ParentsController < ApplicationController
  def show
  end

  def create
    Image.create(image: "")
  end
  
  private
  def image_params
    params.requier(:id).permit(:image)
  end
  
end
