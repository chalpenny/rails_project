class CreateTempPetNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :temp_pet_notes do |t|
      t.string :content
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
