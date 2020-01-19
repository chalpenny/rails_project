class PetsController < ApplicationController

    def new
        @pet = Pet.new    
    end

    def create
        @pet = Pet.new(pet_params)
        binding.pry
        if @pet.save
            redirect_to @pet
        else
            render :new
        end
    end

    def update

    end

    def show
        @pet = Pet.find_by(params[:id])
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :description, :notes)
    end

end
