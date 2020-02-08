# frozen_string_literal: true

Condition.create(
  [
    {
      name: 'Normal',
      description:
        'Non chronic patient.'
    },
    {
      name: 'Hypertension',
      description:
        'Physical pressure that is higher than a standard or average pressure.'
    },
    {
      name: 'Diabetes',
      description:
        'A disease in which the body’s ability to produce or respond to the hormone insulin is impaired, resulting in abnormal metabolism of carbohydrates and elevated levels of glucose in the blood and urine.'
    },
    {
      name: 'Obesity',
      description:
        'Is a complex disease involving an excessive amount of body fat.'
    },
    {
      name: 'Dementia',
      description:
        'Is an overall term for diseases and conditions characterized by a decline in memory'
    }
  ]
)

Drug.create(
  [
    {
      generic_name: 'Ofloxacin',
      description:
        'Is used to treat bacterial infections of the skin, lungs, prostate, or urinary tract (bladder and kidneys).'
    },
    {
      generic_name: 'Ibuprofen',
      description:
        'It works by reducing hormones that cause inflammation and pain in the body.'
    },
    {
      generic_name: 'Gabapentin',
      description:
        'It works by reducing hormones that cause inflammation and pain in the body.'
    },
    {
      generic_name: 'Amoxicillin',
      description:
        'Is used to treat a wide variety of bacterial infections. This medication is a penicillin-type antibiotic.'
    },
    {
      generic_name: 'Allergy Relief',
      description:
        'Can help relieve sneezing, itching, a runny nose and watery eyes.'
    },
    {
      generic_name: 'Losartan Potassium',
      description:
        'Medication that doctors prescribe to treat high blood pressure or hypertension.'
    },
    {
      generic_name: 'Omeprazole',
      description:
        'Liquid generally used to decrease infectious agents on the hands.'
    },
    {
      generic_name: 'Mesalazine',
      description:
        'Liquid generally used to decrease infectious agents on the hands.'
    }
  ]
)

Condition.all.each do |condition|
  Drug.all.each do |drug|
    first_freq = rand(1..3)
    last_freq = rand(4..6)
    first_dose = rand(1..3)
    last_dose = rand(4..6)
    DrugRange.create(
      drug: drug,
      condition: condition,
      frequency: first_freq..last_freq,
      dose: first_dose..last_dose
    )
  end
end

40.times do
  drug_range = DrugRange.all.sample
  drug = drug_range.drug
  condition = drug_range.condition
  Prescription.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    frequency: rand(drug_range.frequency),
    condition_name: condition.name,
    dose: rand(drug_range.dose),
    drug: drug,
    additional_notes: Faker::Lorem.paragraph
  )
end
