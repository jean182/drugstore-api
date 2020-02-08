# frozen_string_literal: true

class CreateDrugRanges < ActiveRecord::Migration[6.0]
  def change
    create_table :drug_ranges do |t|
      t.numrange :dose
      t.int4range :frequency
      t.belongs_to :drug
      t.belongs_to :condition

      t.timestamps
    end
  end
end
