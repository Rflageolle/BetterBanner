class Section < ApplicationRecord

  validates_presence_of :semester, :number, :course_id, :room_number

  belongs_to :course
  has_and_belongs_to_many :students

end
