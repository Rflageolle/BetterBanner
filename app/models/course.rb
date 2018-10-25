class Course < ApplicationRecord

  validates_uniqueness_of :name, :number
  validates_presence_of :name, :number, :department, :credit_hours

  has_many :sections
end
