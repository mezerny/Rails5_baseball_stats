class AddFieldsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :era, :string
    add_column :players, :innings, :string
    add_column :players, :earned_runs, :string
    add_column :players, :hit_batter, :string
    add_column :players, :walked_batter, :string
    add_column :players, :wild_pitches, :string
    add_column :players, :balk, :string
    add_column :players, :complete_games, :string
    add_column :players, :shut_outs, :string
    add_column :players, :struck_out_batter, :string
    add_column :players, :losses, :string
    add_column :players, :saves, :string
  end
end
