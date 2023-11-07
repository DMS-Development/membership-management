class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [ :update, :show, :destroy]
  def index
    @events = Event.all
    render json: @events.as_json(include: [:attendances])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def update
    if @event.update(event_params)
      render json: @event, status: :ok
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @event.as_json(include: [:attendances])
  end

  def destroy
    @event.destroy
    head :no_content
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :date, :time, :location, :max_participants)
  end
end
