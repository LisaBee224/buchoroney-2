class PartiesController < ApplicationController

  def show
    @guest ||= Guest.find_by(id: session[:guest_id])
    @party = @guest.party
  end

  def edit

    @party = Party.find_by(id: params[:id])
    # binding.pry
    @guests = @party.guests

  end




# def update
#   binding.pry
#   @party = Party.find(party_params[:id])
#   if @party.update(party_params)
#     binding.pry
#     redirect_to @party
#   else
#     render '_rsvp'
#   end
# end


  def party_params
        params.require(:party).permit([:id, :party_name, :guest_id, guests: [:id, :first_name, :last_name, :email, :meal_id, :rehearsal_att, :party_id, :attending] ]) #list all the attributes that you want to allow to be passed from the       view  to the model when in the controller
    end
end
