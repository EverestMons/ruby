class EventsController < ApplicationController
  def new
  end

  def create
    @host = User.find(session[:user_id])
    @event = Event.new(event_params)
    @event.host = @host
    if @event.valid?
      @event.save
      redirect_to root_path
    else puts @event.errors.full_messages
      redirect_to '/events/new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def user_state
  end

  def other_states
  end

  def index
    @user_events = Event.where(state: session[:user_state])
    @not_user_events = Event.where.not(state: session[:user_state])
  
  end

private
  def event_params
    params.require(:event).permit(:name, :datetime, :city, :state)
  end
end
