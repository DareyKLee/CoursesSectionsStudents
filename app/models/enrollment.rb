class Enrollment < ActiveRecord::Base
  validates :section_id, :student_id, presence: true  

  belongs_to :section
  belongs_to :student
end
