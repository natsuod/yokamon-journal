class TopicsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @topics = Topic.order("created_at DESC")
  end

  def show
    @topic = Topic.find(params[:id])
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

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy if topic.user_id == current_user.id
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    topic = Topic.find(params[:id])
    if topic.user_id == current_user.id
      topic.update(topic_params)
    end
  end

  def topic_params
    params.require(:topic).permit(:title, :body, :image).merge(user_id: current_user.id)
  end

end
