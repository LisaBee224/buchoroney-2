class SessionsController < ApplicationController
  def new
    @guest = Guest.find_by_email(params[:email])
    if @guest
      @party = @guest.party
      session[:guest_id] = @guest.id
      redirect_to "/parties/#{@party.id}/edit"
    else
      render :'new'
    end
  end

  def create
    @guest = Guest.find_by_email(params[:email])
    if @guest
      @party = @guest.party
      session[:guest_id] = @guest.id

      redirect_to "/parties/#{@party.id}/edit"
    else
      redirect_to '/login'
    end
  end


  def destroy
    session[:guest_id] = nil
    redirect_to '/login'
  end
end
