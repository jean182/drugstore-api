class Condition < ApplicationRecord
  has_many :drug_ranges
  has_many :drugs, through: :drug_ranges
end
