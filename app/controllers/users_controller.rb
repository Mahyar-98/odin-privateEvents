class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        user_signed_in?
        @user = User.find(params[:id])
    end
end
