require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
   setup do
    @student = students(:one)
  end

  test "should search students" do
    get search_students_url, params: {search: "mystring" }
    assert_select "td", text: "MyString"
  end

  test "blank search should show all students" do
    get search_students_url, params: {search: "" }
    assert_select "td", text: "MyString"
  end
  
  test "searches for students always return 200" do
    get search_students_url, params: {search: "non-existant" }
    assert_equal 200,status
  end

end