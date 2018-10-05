require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  
  test "name present" do
    assert_not Course.create(name:"", department:"EXAMPLE DEPARTMENT", course_number:"EXAMPLE 1234", credit_hours: 4).valid?
  end
  
  test "department present" do
    assert_not Course.create(name:"EXAMPLE NAME 1", department:"", course_number:"EXAMPLE 2345", credit_hours: 4).valid?
  end

  test "course number present" do
    assert_not Course.create(name:"EXAMPLE NAME 2", department:"EXAMPLE DEPARTMENT", course_number:"", credit_hours: 4).valid?
  end

  test "credit hours present" do
    assert_not Course.create(name:"EXAMPLE NAME 3", department:"EXAMPLE DEPARTMENT", course_number:"EXAMPLE 3456", credit_hours: "").valid?
  end

end