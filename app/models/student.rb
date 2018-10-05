class Student < ActiveRecord::Base
  validates :id_number, uniqueness:true
  validates :name, :id_number, presence:true
  validates :id_number, length: {is: 9}
  validates :name, length: {minimum: 2}  

  has_many :enrollments
  has_many :sections, through: :enrollments
end