class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update ]
    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Welcome to Alpha Blog #{@user.username}, You have successfully signed up!"
            redirect_to articles_path
        else
            render 'new'
        end

    end

    def edit
    end
    # /users/:id/edit
    def update
        if @user.update(user_params)
            flash[:notice] = "Your account was updated successfully!"
            redirect_to @user
          else
            render 'edit'
          end
    end
    # /users/:id
    def show
    end

    def index
        @users =  User.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    end

    def destroy
        @user.destroy
        flash[:notice] = "User with id #{params[:id]} was deleted successfully"
        redirect_to users_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(params[:id])
    end
    
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end