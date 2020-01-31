class NotesController < ApplicationController
    before_action :authenticate_user!

    def new
        @note = @notable.notes.new
    end

    def create
        @note = @notable.notes.new(note_params)
        @notable.save
        redirect_to @notable, notice: "Your note was successfully posted"
    end

    def destroy
        @notes.destroy
    end

    private

    def note_params
        params.require(:note).permit(:content)
    end

end