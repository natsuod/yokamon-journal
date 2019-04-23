class TopController < ApplicationController

  def index
    @topics = Topic.order("created_at DESC").limit(3)
    @events = Event.order("created_at DESC").limit(3)
  end
end
