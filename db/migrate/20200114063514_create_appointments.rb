class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :start_date
      t.string :end_date
      t.integer :user_id
      t.integer :client_id
      t.integer :appt_fee

      t.timestamps
    end
  end
end
