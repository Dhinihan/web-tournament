class RegisteredPlayer < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :player

  self.primary_keys = :tournament_id, :player_id
end
