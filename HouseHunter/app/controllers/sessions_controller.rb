class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email_address: params[:session][:email_address].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      
      session[:id] = user.id
      
      
      redirect_to users_path, :notice => "Logged in successfully"

    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => "You successfully logged out"
  end
end