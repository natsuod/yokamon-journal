class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show

  end

  def new
    @events = Event.new
  end
end
