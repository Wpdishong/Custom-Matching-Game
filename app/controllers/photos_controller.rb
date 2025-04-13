class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo, only: [:show, :destroy]

  def index
    @photos = current_user.photos
  end

  def show
  end

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)

    if @photo.save
      redirect_to photos_path, notice: 'Photo was successfully uploaded.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_path, notice: 'Photo was successfully deleted.'
  end

  private

  def set_photo
    @photo = current_user.photos.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
