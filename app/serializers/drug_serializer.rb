class DrugSerializer < ActiveModel::Serializer
  attributes :id, :generic_name, :description, :conditions


  def conditions
    object.drug_ranges.map do |range|
      {
        id: range.id,
        name: range.condition.name,
        description: range.condition.description,
        dose: range.dose,
        frequency:range.frequency
      }
    end
  end
end
