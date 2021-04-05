class UsersController < ApplicationController

    before_action :logged_in?, only: [:show]

    def index
        render :json => User.all
    end

    def show
        @user = User.find(params[:id])
        render @user
    end

    def create
        user = User.new(user_params)
        if user.save()
            render user.id
        else
            render "failed to create user!"
        end
    end

    def test 
        render "Hello, World!"
    end
    private

    def user_params
        params.require(:user).permit(
            :firstname,
            :lastname,
            :address,
            :profilepicture,
            :email,
            :password
        )
    end
end
