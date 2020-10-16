class TopicsController < ApplicationController
  def index
  	@topic=Topic.all
    @versions=Version.all
    @cases=Case.all
    @images=Image.all
  end

  def show
    @topic=Topic.all
  end
  def new
  	@topic=Topic.new
  end
  def create
  	@topic = Topic.new image_params
  	if @topic.save
  		redirect_to new_topic_path
  	else
  		render "index"

  	end
  end
  def edit
    @topic=Topic.find(:id)
  end

  def update
    @topic=Topic.find(params[:id])
    if @topic.update(introduce_params)
      redirect_to edit_topic_path
    else
      render "edit"
    end
  end

  private
  def image_params
  	params.require(:topic).permit(:avatar,:name,:gsjj)
  end

  def introduce_params
    params.require(:topic).permit(:gsjj)
  end
end
