class PhotosController < ApplicationController

  def index
    
  end

  def new
    @photo = Photo.new 
  end

  def create
    @photo = Photo.new(photo_params)
  end
  
  private

  def photo_parame
    params.require(:phto).permit(:image, :name, :categorie).merge(user_id: current_user.id)
  end

end
