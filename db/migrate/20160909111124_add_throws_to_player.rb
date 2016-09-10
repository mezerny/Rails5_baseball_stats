class AddThrowsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :throws, :string
  end
end
