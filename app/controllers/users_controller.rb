class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome to Alpha Blog #{@user.username}, You have successfully signed up!"
            redirect_to articles_path
        else
            render 'new'
        end

    end

    def edit
        @user = User.find(params[:id])
    end
    # /users/:id/edit
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Your account was updated successfully"
            redirect_to articles_path
          else
            render 'edit'
          end
    end
    # /users/:id
    def show
    end

    private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end