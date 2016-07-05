class ChangePlayersNameToNotNull < ActiveRecord::Migration
  def change
    change_column_null :players, :name, false
  end
end
