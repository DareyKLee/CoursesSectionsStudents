class Course < ActiveRecord::Base
  validates :name, :course_number, uniqueness: true
  validates :name, :department, :course_number, :credit_hours, presence: true

  has_many :sections
end
