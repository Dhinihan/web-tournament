class RegisteredPlayer < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :player

  self.primary_key = [:tournament_id, :player_id]
end
