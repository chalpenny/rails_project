class AppointmentsController < ApplicationController
    before_action :get_client
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

    def index
        if params[:client_id]
            @appointments = Client.find(params[:client_id]).appointments
        else
            @appointments = Appointment.all
        end
    end

    def show
    end
        
    def new
        @appointment = @client.appointments.build
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @appointment.update(appointment_params)
            redirect_to appointment_path(@appointment)
        else
            render :edit
        end
    end

    def destroy
        @appointment.destroy
        redirect_to appointments_path
    end

    private

    def get_client
        @client = Client.find(params[:client_id])
    end

    def set_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:start_date, :end_date, :appt_note, :appt_fee, :user_id, :clients_attributes => [:client_id])
    end

end
