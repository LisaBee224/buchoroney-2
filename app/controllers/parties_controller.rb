class PartiesController < ApplicationController

  def show

  end

  def edit

    @party = Party.find_by(id: params[:id])
    # binding.pry
    @guests = @party.guests
  end

  def update
    @party = Party.find_by(id: params[:id])
    @party.guests.update_attributes(params[:party][:guests_attributes])
    binding.pry

    if @party.save
      redirect_to '/login'
    end
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
        params.require(:party).permit([:id, :party_name, guests_attributes: [:first_name, :last_name, :email, :meal_id, :party, :attending] ]) #list all the attributes that you want to allow to be passed from the       view  to the model when in the controller
    end
end
