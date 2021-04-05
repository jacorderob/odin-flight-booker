# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([
  { code: "NYC" },
  { code: "ATL" },
  { code: "PEK" },
  { code: "LAX" },
  { code: "DXB" },
  { code: "HND" },
  { code: "ORD" },
  { code: "LHR" },
  { code: "PVG" },
  { code: "CDG" }
])

Airport.all.each do |airport|
  Airport.where("id != #{airport.id}").each do |airport2|
    Flight.create([
      {from_airport: airport, to_airport: airport2, duration: 17, departure: '12-04-2021 10:00:00'},
      {from_airport: airport, to_airport: airport2, duration: 17, departure: '13-04-2021 12:35:00'},
      {from_airport: airport, to_airport: airport2, duration: 17, departure: '14-04-2021 14:20:00'},
      {from_airport: airport, to_airport: airport2, duration: 17, departure: '15-04-2021 17:05:00'}
    ])
  end
end
