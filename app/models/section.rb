class Section < ActiveRecord::Base
  validates :semester, :section_number, :room_number, presence: true  

  belongs_to :course

  has_many :enrollments
  has_many :students, through: :enrollments

  def coursect
    "#{course.name} #{section_number} #{semester}"
  end
end
