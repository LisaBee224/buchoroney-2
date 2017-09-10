class GuestsController < ApplicationController

  def edit
    binding.pry
  end

  def update
    @guest = Guest.find_by(id: params[:guest][:guest_id])
    attendingsat = params[:guest][:attendingsat] == "true" ? true : false
    @guest.update_attributes(attendingsat: attendingsat)
    attendingfri = params[:guest][:attendingfri] == "true" ? true : false
    @guest.update_attributes(attendingfri: attendingfri)

    # redirect_to "parties/#{guest.party.id}/edit"
    render json: {success:true, party_id: @guest.party.id}.to_json
  end
end
