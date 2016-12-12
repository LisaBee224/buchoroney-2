class PartiesController < ApplicationController

  def show

  end

  def edit
    @party = Party.find_by(id: params[:id])
  end

  def update
    binding.pry
    @party.find(params[:id])
    @party.update_attributes

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
