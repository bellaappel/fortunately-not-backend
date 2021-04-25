# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
M = Creator.find_or_create_by(name: 'Magic')
Eightball.create(name: 'Classic', creator: M, pos: ['Yes', 'Most definitely', 'Outlook good.'], neg: ['No', 'No way', 'Unlikely'], vague: ['Better not tell you now', 'Concentrate and ask again', 'Cannot predict now.'])
Eightball.create(name: 'Classic1', creator: M, pos: ['Yes', 'Most definitely', 'Outlook good.'], neg: ['No', 'No way', 'Unlikely'], vague: ['Better not tell you now', 'Concentrate and ask again', 'Cannot predict now.'])
Eightball.create(name: 'Classic2', creator: M, pos: ['Yes', 'Most definitely', 'Outlook good.'], neg: ['No', 'No way', 'Unlikely'], vague: ['Better not tell you now', 'Concentrate and ask again', 'Cannot predict now.'])
