require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "valid student presence" do
    assert Student.create(name:"Hal", id_number: 123412345).valid?
  end

  test "name present" do
    assert_not Student.create(name:"", id_number: 111111111).valid?
  end

  test "id number present" do
    assert_not Student.create(name:"Blake", id_number: "").valid?
  end

end