require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
   setup do
    @enrollment = enrollments(:one)
  end

  test "should search enrollments" do
    get search_enrollments_url, params: {search: "1" }
    assert_select "td", text: "1"
  end

  test "blank search should show all enrollments" do
    get search_enrollments_url, params: {search: "" }
    assert_select "td", text: "1"
  end
  
  test "searches for enrollments always return 200" do
    get search_enrollments_url, params: {search: "non-existant" }
    assert_equal 200,status
  end

end