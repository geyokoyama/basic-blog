class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    respond_to do |format|
      if user && user.authenticate(params[:session][:password])
        format.html { redirect_to user, notice: "You're signed in!" }
      else
        flash.now[:alert] = "Could not log in. Please try again."
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

end
