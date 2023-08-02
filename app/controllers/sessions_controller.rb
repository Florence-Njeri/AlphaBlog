class SessionsController < ApplicationController
    # Show login form
    def new 
    end
    # Submit user login request
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Successfully logged in"
            redirect_to user
        else
            flash.now[:alert] = "There was something wrong with your login credentials"
            render 'new'
        end


    end
    # When user logs out remove the session id
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path

    end
end