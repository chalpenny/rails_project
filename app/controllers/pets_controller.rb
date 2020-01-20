class PetsController < ApplicationController
    before_action: :set_pet, only: [:show, :edit, :update, :destroy]


    def show
    end

    def new
        @pet = @client.pets.build    
    end

    def edit
    end

    def create
        @pet = @client.pets.build(pet_params)
        binding.pry
        if @pet.save
            redirect_to @pet
        else
            render :new
        end
    end
    
    def update
    end
    
    def destry
        @pet.destroy
        redirect_to clients_path
    end

    private

    def set_pet
        @pet = @client.pets.find(params[:id])
    end

    def pet_params
        params.require(:pet).permit(:name, :description, :notes, :clients_attributes => [:client_id])
    end

end
