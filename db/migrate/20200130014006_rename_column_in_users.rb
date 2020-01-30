class RenameColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :provder, :provider    
  end
end
