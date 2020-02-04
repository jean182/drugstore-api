class DrugRange < ApplicationRecord

  belongs_to :drug
  belongs_to :condition

end
