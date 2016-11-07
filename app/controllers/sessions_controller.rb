class SessionsController < ApplicationController
  def new
  end

  def create
    @guest = Guest.find_by_email(params[:email])
    if @guest
      session[:guest_id] = @guest.id
      render '/application/_rsvp'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:guest_id] = nil
    redirect_to '/login'
  end
end
