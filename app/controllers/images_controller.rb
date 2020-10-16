class ImagesController < ApplicationController
	before_action :image_find,only:[:update,:show,:edit,:destroy]

  def new
  	@image=Image.new
  end

  def create
  	@image = Image.new image_params
  	if @image.save
  		redirect_to @image
  	else
  		render 'new'	
  	end
  end

  def update
  	if @image.update image_params
  		redirect_to @image
  	else
  		render 'edit'
  	end
  end

  def edit
  	
  end

  def show
  	
  end

  def index
  	@images=Image.all

  end

  def destroy
  	if @image.destroy
  		redirect_to @image
  		
  	end
  end

  private
  def image_params
  	params.require(:image).permit(:avatar,:name)
  end

  def image_find
  	@image= Image.find(params[:id])
  end

end
