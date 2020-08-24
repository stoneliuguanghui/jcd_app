class TopicsController < ApplicationController
  def index
  	@topic=Topic.all
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

  def update
  end

  private
  def image_params
  	params.require(:topic).permit(:avatar,:name)
  end
end
