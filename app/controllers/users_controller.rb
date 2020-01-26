class UsersController < ApplicationController
    before_action :set_appointment
    
        def index
            @users = User.all
        end

        def show
        end

        def new
            @user = User.new
        end

        def edit
        end

        def create
            @user = User.new(user_params)
        end

        def update
        end

        def destroy
            @user.destroy
            redirect_to users_path
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
