# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clients = Client.first_or_create([ name: 'Karen Gunther', phone: '555-555-5555', email: 'kareng@gmail.com', neighborhood: 'Magnolia', address: '1234 Magnolia Dr', base_fee: '20', client_notes: 'Front door code is 5678'])
clients = Client.first_or_create([ name: 'Julia Cliner', phone: '555-555-5555', email: 'juliac@gmail.com', neighborhood: 'Ballard', address: '1234 Ballard Dr', base_fee: '70', client_notes: 'Text updates every evening'])

appointments = Appointment.first_or_create([ start_date: 'Jan 3', end_date: 'Jan 6' ])
