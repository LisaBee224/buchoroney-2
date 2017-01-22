class GuestsController < ApplicationController

  def edit
  end

  def update
    @guest = Guest.find_by(id: params[:guest][:guest_id])
    attending = params[:guest][:attending] == "true" ? true : false
    @guest.update_attributes(attending: attending)

    # redirect_to "parties/#{guest.party.id}/edit"
    render "index"
  end
end
