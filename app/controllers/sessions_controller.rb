class SessionsController < ApplicationController
  def new; end

  def create
    # render plain: params[:session].inspect
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/'
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy; end
end
