# frozen_string_literal: true

class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
