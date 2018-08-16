class ChangeMailFieldToEmail < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :mail, :email
  end
end
