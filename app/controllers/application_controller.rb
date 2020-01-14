class ApplicationController < ActionController::Base

    def current_user
        User.find_by("Colleen")
    end

end
