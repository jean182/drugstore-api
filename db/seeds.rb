# frozen_string_literal: true

Drug.create(
  [
    {
      generic_name: 'Ofloxacin',
      description:
        'Is used to treat bacterial infections of the skin, lungs, prostate, or urinary tract (bladder and kidneys).',
      frequency: 1..4,
      dose: 0.5..1
    },
    {
      generic_name: 'Ibuprofen',
      description:
        'It works by reducing hormones that cause inflammation and pain in the body.',
      frequency: 2..5,
      dose: 1..2.5
    },
    {
      generic_name: 'Gabapentin',
      description:
        'It works by reducing hormones that cause inflammation and pain in the body.',
      frequency: 2..7,
      dose: 0.5..2
    },
    {
      generic_name: 'Amoxicillin',
      description:
        'Is used to treat a wide variety of bacterial infections. This medication is a penicillin-type antibiotic.',
      frequency: 1..7,
      dose: 0.30..0.60
    },
    {
      generic_name: 'Allergy Relief',
      description:
        'Can help relieve sneezing, itching, a runny nose and watery eyes.',
      frequency: 1..5,
      dose: 0.5..2.5
    },
    {
      generic_name: 'Losartan Potassium',
      description:
        'Medication that doctors prescribe to treat high blood pressure or hypertension.',
      frequency: 1..3,
      dose: 1..3
    },
    {
      generic_name: 'Omeprazole',
      description:
        'Liquid generally used to decrease infectious agents on the hands.',
      frequency: 1..6,
      dose: 1..1.5
    },
    {
      generic_name: 'Mesalazine',
      description:
        'Liquid generally used to decrease infectious agents on the hands.',
      frequency: 1..3,
      dose: 0.1..0.3
    }
  ]
)

10.times do
  random_drug = Drug.find(rand(Drug.first.id..Drug.last.id))
  Prescription.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    frequency: rand(random_drug.frequency),
    dose: rand(random_drug.dose),
    additional_notes: Faker::Lorem.paragraph,
    drug: random_drug
  )
end
