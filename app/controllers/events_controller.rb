class EventsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @events = Event.order("created_at DESC")
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit(:e_title, :time, :date, :e_body, :e_image, :host, :place, :price)
  end

end
