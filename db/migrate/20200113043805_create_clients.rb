class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :neighborhood
      t.string :address
      t.integer :base_fee
      t.string :client_notes
      t.timestamps
    end
  end
end
