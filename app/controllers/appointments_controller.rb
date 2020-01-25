class AppointmentsController < ApplicationController
    before_action :get_client
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

    def index
        @appointments = @client.appointments
    end

    def show
    end
        
    def new
        @appointment = @client.appointments.build
    end

    def create
        @appointment = @client.appointments.build(appointment_params)
        if @appointment.save
            redirect_to client_appointments_path(@appointment)
        else
            binding.pry
            render :new
        end
    end

    def edit
    end

    def update
        if @appointment.update(appointment_params)
            redirect_to client_appointment_path(@appointment)
        else
            render :edit
        end
    end

    def destroy
        @appointment.destroy
        redirect_to client_appointments_path
    end

    private

    def get_client
        @client = Client.find(params[:client_id])
    end

    def set_appointment
        @appointment = @client.appointments.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:start_date, :end_date, :appt_note, :appt_fee, :users_attributes => [:user_id], :clients_attributes => [:client_id])
    end

end
