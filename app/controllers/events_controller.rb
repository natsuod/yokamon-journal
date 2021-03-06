class EventsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @events = Event.order("created_at DESC")
  end

  def show
    @event = Event.find(params[:id])
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

  def destroy
    event = Event.find(params[:id])
    event.destroy if event.user_id == current_user.id
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    if event.user_id == current_user.id
      event.update(event_params)
    end
  end

  def event_params
    params.require(:event).permit(:e_title, :time, :date, :e_body, :e_image, :host, :place, :price).merge(user_id: current_user.id)
  end

end
