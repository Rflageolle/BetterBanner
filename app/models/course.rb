class Course < ApplicationRecord

  validates_uniqueness_of :name, :number
  validates_presence_of :department, :credit_hours

  has_many :sections
end
