class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

    def index
        @appointments = Appointment.all
    end

    def show
    end
        
    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_appointment
        @appoointment = Appointment.find(params[:id])
    end
end
