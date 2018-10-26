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

sections = [
  [  'Spring 2018',   1, 1, 220], [  'Fall 2018',   2, 1, 220], [  'Fall 2018',   3, 1, 210],
  [  'Fall 2018',   1, 2, 140], [  'Summer 2018',   2, 2, 210], [  'Fall 2018',   3, 2, 220],
  [  'Spring 2018',   1, 3, 250], [  'Fall 2018',   2, 3, 220], [  'Summer 2018',   1, 4, 220]
]

student = [
  [  'Tom', 'Hanks'  ], [  'Tim', 'Allen'  ], [  'Hilary', 'Clinton'], [  'Erin', 'Soto']
]

classes.each do |name, department, number, credit_hours|
  Course.create(name: name, department: department, number: number, credit_hours: credit_hours)
end

sections.each do |semester, number, course, room_number|
  Section.create(semester: semester, number: number, course: Course.find(course), room_number: room_number)
end

student.each do |first, last|
  Student.create(first_name: first, last_name: last)
end
