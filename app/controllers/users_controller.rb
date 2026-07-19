class UsersController < ApplicationController
    def new
        @user = User.new
        render :registration
    end

    def create
        @user=User.new(user_params)

        @user.role = Role.find_or_create_by!(role: "etc")

        if @user.save
            flash[:success] = "Welcome to the app, #{@user.first_name}!"
            redirect_to root_path
        else
            render :registration
        end

    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :patronymic, :about, :password, :email)
    end
end