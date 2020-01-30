class UsersController < ApplicationController
    #protect_from_forgery 
    before_action :authenticate_user!
    before_action :set_appointment
    

        def show
        end

        private

        def set_appointment
            @appointment = Appointment.find(params[:id])
        end

        def user_params
            params.require(:client).permit(:name, :email, :encrypted_password)
        end
    end

end
