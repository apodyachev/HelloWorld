class SessionsController < ApplicationController

    def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
    else
      render "Email/Password Incorect!"
    end
  end

  def destroy
    log_out
    render "Logged Out!"
  end
end
