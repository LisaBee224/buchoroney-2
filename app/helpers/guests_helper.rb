module GuestsHelper
  def current_user
    @guest ||= Guest.find_by(id: session[:guest_id])
  end
end
