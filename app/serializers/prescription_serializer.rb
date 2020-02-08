# frozen_string_literal: true

class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :condition_name, :frequency, :dose, :additional_notes
  belongs_to :drug
end
