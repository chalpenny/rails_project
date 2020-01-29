class Pets::NotesController < NotesController
    before_action :set_notable

    private

    def set_notable
        @notable = Pet.find(params[:pet_id])
    end

end