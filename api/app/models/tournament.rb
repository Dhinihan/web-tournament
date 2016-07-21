class Tournament < ActiveRecord::Base
  belongs_to :tournament_type

  has_many :rounds
  has_many :registered_players
  has_many :players, through: :registered_players

  validates :name, presence: true
  validates :tournament_type_id, presence: true
end
