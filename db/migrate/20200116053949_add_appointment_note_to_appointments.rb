class AddAppointmentNoteToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :appt_note, :string
  end
end
