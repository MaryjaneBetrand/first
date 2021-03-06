class SessionsController < ApplicationController


 def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     sign_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
   sign_out if signed_in?
    redirect_to root_url
  end
end
