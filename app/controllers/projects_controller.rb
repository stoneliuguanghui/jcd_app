class ProjectsController < ApplicationController
  def index
  	@topic=Topic.all
    @versions=Version.all
    @cases=Case.all
    @images=Image.all
  end
end
