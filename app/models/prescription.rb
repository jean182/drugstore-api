class Prescription < ApplicationRecord
  belongs_to :drug
  accepts_nested_attributes_for :drug
end
