require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "valid id length" do
    assert Student.create(name:"Vor", id_number: 789789789).valid?
  end

  test "9 digit id length" do
    assert_not Student.create(name:"Kor", id_number: 555).valid?
  end

end