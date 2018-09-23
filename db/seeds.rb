# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

classes = [
  [  'Introduction to Theory of Computation',   'CS',   52566,   2],
  [  'Software Development Methods and Tools',   'CS',   54612,   4],
  [  'Web Application Architecture',   'CS',   56028,   4],
  [  'Probability and Statistics',   'MTH',   50330,   4]
]

classes.each do |name, department, number, credit_hours|
  Course.create(name: name, department: department, number: number, credit_hours: credit_hours)
end
