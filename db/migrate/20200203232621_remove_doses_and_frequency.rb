class RemoveDosesAndFrequency < ActiveRecord::Migration[6.0]
  def change
    remove_column :drugs, :dose
    remove_column :drugs, :frequency
  end
end
