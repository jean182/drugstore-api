class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.string :first_name
      t.string :last_name
      t.float :dose
      t.integer :prescription
      t.text :additional_notes

      t.timestamps
    end
  end
end
