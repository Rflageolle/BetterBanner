class Section < ApplicationRecord

  validates :number, uniqueness: { scope: :course, message: "only one section" }
  validates_presence_of :number, :semester,  :course_id, :room_number

  belongs_to :course
  has_and_belongs_to_many :students

  def desc
    "#{course.department} #{course.name} - #{number}"
  end

end
