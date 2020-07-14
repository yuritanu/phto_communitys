class PhotosController < ApplicationController

  def index
    
  end

  def new
    @photo = Photo.new 
  end

  def create
    Photo.create(photo_params)
    redirect_to root_path
  end
  
  def show
    
  end
  
  private

  def photo_params
    params.require(:photo).permit(:image, :name).merge(user_id: current_user.id)
  end

end
