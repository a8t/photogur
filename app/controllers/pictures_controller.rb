class PicturesController < ApplicationController



  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    puts params
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to @picture
    else
      render 'new'
    end

  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    redirect_to picture_path
  end

  def destroy

    @picture = Picture.find(params[:id])
    @picture.delete
    redirect_to pictures_path

  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
