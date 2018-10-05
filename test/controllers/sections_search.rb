require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
   setup do
    @section = sections(:one)
  end

  test "should search sections" do
    get search_sections_url, params: {search: "mystring" }
    assert_select "td", text: "MyString"
  end

  test "blank search should show all sections" do
    get search_sections_url, params: {search: "" }
    assert_select "td", text: "MyString"
  end
  
  test "searches for sections always return 200" do
    get search_sections_url, params: {search: "non-existant" }
    assert_equal 200,status
  end

end