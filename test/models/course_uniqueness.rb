require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  setup do
    Course.create(name:"UNIQUE", department:"EXAMPLE DEPARTMENT", course_number:"UNIQUE 1234", credit_hours: 3)
  end

  test "unique name" do
    assert_not Course.create(name:"UNIQUE", department:"EXAMPLE DEPARTMENT", course_number:"XYZ 9999", credit_hours: 3).valid?
  end

  test "unique course number" do
    assert_not Course.create(name:"ABC", department:"EXAMPLE DEPARTMENT", course_number:"UNIQUE 1234", credit_hours: 3).valid?
  end

end