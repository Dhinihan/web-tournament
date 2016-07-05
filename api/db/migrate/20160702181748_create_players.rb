class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :n_wins, :default => 0
      t.integer :n_loses, :default => 0

      t.timestamps
    end
  end
end
