require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "valid name length" do
    assert Student.create(name:"AA", id_number:468468468).valid?
  end

  test "name length" do
    assert_not Student.create(name:"Z", id_number:135135134).valid?
  end

end