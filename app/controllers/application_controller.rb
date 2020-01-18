class ApplicationController < ActionController::Base

    def current_user
        User.find_by(name: "Colleen")
    end

end
