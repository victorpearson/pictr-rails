class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.create(safe_picture_params)
    redirect_to root_path
  end

  private
  def safe_picture_params
    params.require(:picture).permit(:name, :description, :picture)
  end
end
