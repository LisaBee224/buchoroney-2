class MealsController < ApplicationController

  def update

    @guest = Guest.find_by(id: params[:meal][:guest_id])
    @meal_desc = params[:meal][:desc]
    meal = Meal.find_by(desc: params[:meal][:desc])
    @guest.update_attributes(meal: meal)

    render json: {success:true, party_id: @guest.party.id}.to_json
  end

end
