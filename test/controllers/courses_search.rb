require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
   setup do
    @course = courses(:one)
  end

  test "should search courses" do
    get search_courses_url, params: {search: "mystring" }
    assert_select "td", text: "MyString"
  end

  test "blank search should show all courses" do
    get search_courses_url, params: {search: "" }
    assert_select "td", text: "MyString"
  end
  
  test "searches for courses always return 200" do
    get search_courses_url, params: {search: "non-existant" }
    assert_equal 200,status
  end

end