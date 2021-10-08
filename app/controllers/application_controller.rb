class ApplicationController < ActionController::Base
    before_action :authenticate_any!

    protected 
    def authenticate_any!
        authenticate_user! unless admin_signed_in?
    end
end