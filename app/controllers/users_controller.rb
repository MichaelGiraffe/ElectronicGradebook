class UsersController < ApplicationController
    #registration
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

    #autentification
    def login

    end

    def authenticate
        user = User.find_by(email: params[:email])

        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:success] = "Вы успешно вошли в систему."
            redirect_to profile_path
        else
            flash[:alert] = "Неверный email или пароль."
            render :login, status: :unprocessable_entity
        end
    end

    def logout
        session.delete(:user_id)
        flash[:success] = "Вы вышли из системы."
        redirect_to root_path
    end

    def profile
        @user = User.find(session[:user_id])
    end

    #editing profile
    def edit
        @user = User.find(session[:user_id])
    end

    def update
        @user = User.find(session[:user_id])

        if @user.update(profile_params)
            flash[:success] = "Профиль успешно обновлён."
            redirect_to profile_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :patronymic, :about, :password, :email)
    end

    def profile_params
        params.require(:user).permit(:first_name,:last_name,:patronymic,:about,:email,:password,:password_confirmation)
    end
end