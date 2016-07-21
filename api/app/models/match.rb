class Match < ActiveRecord::Base
  belongs_to :round
  belongs_to :player_1, class_name: "Player", foreign_key: "player_1"
  belongs_to :player_2, class_name: "Player", foreign_key: "player_2"
  belongs_to :match_1, class_name: "Match", foreign_key: "match_1"
  belongs_to :match_2, class_name: "Match", foreign_key: "match_2"
end
