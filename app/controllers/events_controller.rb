class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def index
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.events.build(allowed_params)
        if @event.save
            redirect_to @event
        else
            render :new, status: :unprocessable_entity
        end
    end

    def allowed_params
        params.require(:event).permit(:date, :location)
    end
end
