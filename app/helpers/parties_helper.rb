module PartiesHelper

  def current_party
    @party ||= Party.find_by(id: current_user.party_id)
  end
end
