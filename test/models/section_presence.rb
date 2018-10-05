require 'test_helper'

class SectionTest < ActiveSupport::TestCase

  setup do
    Course.create(name:"PLACEHOLDER", department:"PLACEHOLDER DEPARTMENT", course_number:"PHR 1234", credit_hours:3)
  end

  test "valid setup for section" do
    assert Section.create(semester:"Fall 2019", section_number:1, room_number:"AES 112", course_id: Course.find_by(name:"PLACEHOLDER").id).valid?
  end

  test "semester presence" do
    assert_not Section.create(semester:"", section_number:1, room_number:"AES 112", course_id: Course.find_by(name:"PLACEHOLDER").id).valid?
  end

  test "section number presence" do
    assert_not Section.create(semester:"Summer 2020", section_number:"", room_number:"AES 116", course_id: Course.find_by(name:"PLACEHOLDER").id).valid?
  end

  test "room number presence" do
    assert_not Section.create(semester:"Summer 2020", section_number:1, room_number:"", course_id: Course.find_by(name:"PLACEHOLDER").id).valid?
  end
  
  test "course_id presence" do
    assert_not Section.create(semester:"Summer 2020", section_number:1, room_number:"AES 128", course_id: "").valid?
  end

end