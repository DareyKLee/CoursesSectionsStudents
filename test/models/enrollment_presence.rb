require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  
  setup do
    Course.create(name:"BLAH", department:"BLAH DEPARTMENT", course_number:"BLAH 123", credit_hours: 4)
    Section.create(semester:"NAH 2011", section_number:34, room_number: "NAH 142", course_id: Course.find_by(name:"BLAH").id)
    Student.create(name:"KAH", id_number: 354354353)
  end
  
  test "valid enrollment" do
    assert Enrollment.create(section_id: Section.find_by(section_number: 34).id, student_id: Student.find_by(name:"KAH").id).valid?
  end

  test "section_id presence" do
    assert_not Enrollment.create(section_id: "", student_id: Student.find_by(name:"KAH").id).valid?
  end

  test "student_id presence" do
    assert_not Enrollment.create(section_id: Section.find_by(section_number: 34).id, student_id: "").valid?
  end

end