class PetsController < ApplicationController
    before_action :authenticate_user!
    before_action :get_client
    before_action :set_pet, only: [:show, :edit, :update, :destroy]

    def index
        @pets = @client.pets
    end

    def show
    end

    def new
        @pet = @client.pets.build    
    end

    def edit
    end

    def create
        @pet = @client.pets.build(pet_params)
        if @pet.save
            redirect_to @client
        else
            render :new
        end
    end
    
    def update
        if @pet.update(pet_params)
            redirect_to client_pet_path(@client), notice: 'Pet has been updated'
        else
            render :edit
        end
    end
    
    def destroy
        @pet.destroy
        redirect_to client_pets_path(@client), notice: 'Pet has been deleted'
    end

    private

    def get_client
        @client = Client.find(params[:client_id])
    end

    def set_pet
        @pet = @client.pets.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:name, :description, :clients_attributes => [:client_id])
    end

end
