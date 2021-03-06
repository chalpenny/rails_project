class AppointmentsController < ApplicationController
    before_action :authenticate_user!
    before_action :get_client
    before_action :get_user
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

    def index
        if params.include?(:client_id)
        @appointments = @client.appointments
           # render appointments_path
        else
            @appointments = @user.appointments
           # render appointments_path
        end
    end

    def show
    end
        
    def new
        #request.path_parameters[:client_id] = @client.id
        @appointment = @user.appointments.build
    end

    def create
        @appointment = @user.appointments.build(appointment_params)
        @appointment.client_id = @client.id
        if @appointment.save
            redirect_to client_appointments_path(@client)
        else
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

    def get_user
        @user = current_user
    end

    def get_client
        @client = Client.find_by(params[:client_id])
    end

    def set_appointment
        @appointment = @client.appointments.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:start_date, :end_date, :appt_note, :appt_fee, :users_attributes => [:user_id], :clients_attributes => [:client_id])
    end

end
