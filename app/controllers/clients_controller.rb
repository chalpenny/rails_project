class ClientsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_client, only: [:show, :edit, :update, :destroy]

    def index
        if params[:search]
           @clients = Client.where(neighborhood:params[:search]) 
        else
            @clients = Client.all.sort_by(&:name)
        end
    end

    def show
    end

    def new
        @client = Client.new
        @client.pets.build
        @client.appointments.build
    end

    def edit
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            redirect_to client_path(@client)
        else
            render :new
        end
    end

    def update
        if @client.update(client_params)
            redirect_to client_path(@client)
        else 
            render :edit
        end
    end

    def destroy
        @client.destroy
        redirect_to clients_path
    end

    private

    def set_client
        @client = Client.find(params[:id])
    end

    def client_params
        params.require(:client).permit(:name, :phone, :email, :neighborhood, :address, :base_fee, :client_notes, :pets_attributes => [
            :name,
            :description,
            :notes
        ])
    end

end
