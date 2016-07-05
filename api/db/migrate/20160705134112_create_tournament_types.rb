class CreateTournamentTypes < ActiveRecord::Migration
  def change
    create_table :tournament_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
