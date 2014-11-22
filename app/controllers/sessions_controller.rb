class SessionsController < ApplicationController

skip_before_filter :authorize

	def new
	end

    def create
        user = User.where(username: params[:username]).first

        if user && user.authenticate(params[:password])

            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in!"
        else
            flash.now.alert = "Username or password is invalid"
            render "new"

        end
    end

    def destroy
        reset_session
        redirect_to root_path, notice: "Logged out!"
    end
end


end
