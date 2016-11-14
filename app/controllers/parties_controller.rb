class PartiesController < ApplicationController
def show

end
  def update
     binding.pry
    @party.find(params[:id])
    @party.update_attributes

    if @party.save
      redirect_to '/login'
    end
  end
end
