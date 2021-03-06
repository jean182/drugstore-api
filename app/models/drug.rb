# frozen_string_literal: true

class Drug < ApplicationRecord
  has_many :drug_ranges
  has_many :conditions, through: :drug_ranges
end
