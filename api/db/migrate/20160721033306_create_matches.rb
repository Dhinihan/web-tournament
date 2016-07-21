class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :number
      t.string :player_1_points
      t.string :player_2_points
      t.references :round, index: true
      t.references :player_1, references: :players, index: true
      t.references :player_2, references: :players, index: true
      t.references :match_1, references: :match, index: true
      t.references :match_2, references: :match, index: true

      t.timestamps
    end
  end
end
