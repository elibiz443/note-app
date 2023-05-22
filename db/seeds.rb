10.times do
  Note.create(
    name: Faker::Quote.matz
  )
end
