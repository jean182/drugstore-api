class AddConditionToPrescription < ActiveRecord::Migration[6.0]
  def change
    add_column :prescriptions, :condition_name, :string
  end
end
