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
    @guests = @party.guests
    count = 0
    @guests.each do |guest|
      guest.update(meal_id: params["party"]["guests_attributes"].flatten[count]["meal_id"][-2].to_i)
         # binding.pry
      count+=1
    end

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
        params.require(:party).permit([:id, :party_name, :guest_id, :rehearsal, guests: [:id, :first_name, :last_name, :email, :meal_id, :rehearsal_att, :party_id, :attending] ]) #list all the attributes that you want to allow to be passed from the       view  to the model when in the controller
    end
end
