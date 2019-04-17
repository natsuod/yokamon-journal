class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show

  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to @topic
    else
      render :new
    end
  end

  def topic_params
    params.require(:topic).permit(:title, :body, :image)
  end

end
