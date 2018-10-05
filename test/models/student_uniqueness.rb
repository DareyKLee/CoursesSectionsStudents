require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  
  setup do
    Student.create(name:"Boris", id_number:880880880)
  end

  test "valid id number" do
    assert Student.create(name:"Vella", id_number:777777777).valid?
  end

  test "unique id number" do
    assert_not Student.create(name:"Bella", id_number:880880880).valid?
  end

end