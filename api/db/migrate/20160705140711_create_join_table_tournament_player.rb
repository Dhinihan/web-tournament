class CreateJoinTableTournamentPlayer < ActiveRecord::Migration
  def change
    create_join_table :tournaments, :players, table_name: :registered_players  do |t|
      t.index [:tournament_id, :player_id]
      t.integer :n_wins, :default => 0
      t.integer :n_loses, :default => 0
      t.boolean :active, :default => true
    end

    reversible do |dir|
      dir.up do
        # add a CHECK constraint
        execute <<-SQL
          ALTER TABLE registered_players ADD CONSTRAINT registered_players_pk PRIMARY KEY (player_id, tournament_id)
        SQL
      end
    end

  end
end
