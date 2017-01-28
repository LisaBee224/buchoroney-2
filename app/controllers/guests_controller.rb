class GuestsController < ApplicationController

  def edit
    binding.pry
  end

  def update
    @guest = Guest.find_by(id: params[:guest][:guest_id])
    attending = params[:guest][:attending] == "true" ? true : false
    @guest.update_attributes(attending: attending)

    # redirect_to "parties/#{guest.party.id}/edit"
    render json: {success:true, party_id: @guest.party.id}.to_json
  end
end
