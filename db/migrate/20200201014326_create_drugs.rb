# frozen_string_literal: true

class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :generic_name
      t.numrange :dose
      t.int4range :frequency
      t.text :description

      t.timestamps
    end
  end
end
