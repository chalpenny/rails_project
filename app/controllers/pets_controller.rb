class PetsController < ApplicationController

    def new
        @pet = Pet.new
        #pet = temp_pet_notes.build("senior")
        #@pet = temp_pet_notes.build("allergies")
    end

    def create
        @pet = Pet.new(pet_params)
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
        params.require(:pet).permit(:name, :description, :notes, temp_pet_note_attributes: [:content])
    end

end
