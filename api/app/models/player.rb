class Player < ActiveRecord::Base
  has_many :registered_players
  has_many :tournaments, through: :registered_players

  validates :name, presence: true
end
