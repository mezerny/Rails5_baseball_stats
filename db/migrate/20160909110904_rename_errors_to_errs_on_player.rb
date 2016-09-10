class RenameErrorsToErrsOnPlayer < ActiveRecord::Migration[5.0]
  def change
    rename_column :players, :errors, :errs
  end
end
