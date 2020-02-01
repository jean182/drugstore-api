class AddDrugToPrescription < ActiveRecord::Migration[6.0]
  def change
    add_reference :prescriptions, :drug, null: false, foreign_key: true
  end
end
