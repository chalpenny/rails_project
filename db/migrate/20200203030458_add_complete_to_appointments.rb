class AddCompleteToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :complete, :boolean, :default => false
  end
end
