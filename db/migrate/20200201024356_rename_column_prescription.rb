class RenameColumnPrescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :prescriptions, :prescription, :frequency
  end
end
