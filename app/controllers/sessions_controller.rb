class SessionsController < ApplicationController
  def new
  end

  def create
    @guest = Guest.find_by_email(params[:email])
    if @guest
      @party = @guest.party
      session[:guest_id] = @guest.id
      render '/application/_rsvp'
    else
      redirect_to '/login'
    end
  end
def update
  end
  def destroy
    session[:guest_id] = nil
    redirect_to '/login'
  end
end
