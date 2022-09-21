class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private

    def user_not_authorized
        flash[:alert] = "Você não está autorizado a realizar esta ação."
        redirect_back(fallback_location: root_path)
    end
end
