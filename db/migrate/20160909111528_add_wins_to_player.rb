class AddWinsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :wins, :string
  end
end
