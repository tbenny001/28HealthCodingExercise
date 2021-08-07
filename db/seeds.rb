# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

STATES.each do |s|
    State.create({
        name: s.first,
        symbol: s.second,
        service_availability: s.third,
        min_required_age: s.last
    })
end

PRODUCTS.each do |p|
    category = p[:category].gsub(/\s+/, "")
    category = "TestingKit" if category == "TestingKits"
    category = "OtcProduct" if category == "OTCProducts"

    Product.create({
        name: p[:name],
        type: category,
        drug_code: p[:ndc],
        quantity: p[:qty],
        price: p[:price],
        instructions: p[:instructions]
    })
end

Patient.create(full_name: "Jane Doe", email: "janedoe@foo.com", birth_date: DateTime.new(2000,1,1), state: State.first)
Patient.create(full_name: "Jane Smith", email: "janesmith@foo.com", birth_date: DateTime.new(2000,2,2), state: State.last)
