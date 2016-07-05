class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name, :null => false
      t.references :tournament_type, index: true, :null => false

      t.timestamps
    end
  end
end
