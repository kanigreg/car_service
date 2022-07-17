# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
service_categories = ServiceCategory.create([{ name: 'Diagnostic' }, { name: 'Repair' }])

services = Service.create([
  { name: 'Engine diagnosis', service_category: service_categories.first },
  { name: 'Internal diagnosis', service_category: service_categories.first },
  { name: 'Change battary', service_category: service_categories.second },
  { name: 'Dent repair', service_category: service_categories.second }
])

performers = Performer.create([{ name: 'Ivan' }, { name: 'Mario' }, { name: 'Viktor' }])

orders = Order.create([{ client_name: 'Joe' }, { client_name: 'Tommy' }])

orders.first.tasks.create([
  { service: services[1], performer: performers[2] },
  { service: services[3], performer: performers[0] },
  { service: services[0], performer: performers[1] }
])

orders.second.tasks.create([
  { service: services[0], performer: performers[0] },
  { service: services[1], performer: performers[1] },
  { service: services[2], performer: performers[2] },
  { service: services[3] }
])
