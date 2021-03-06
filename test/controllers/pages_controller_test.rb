require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get index_url
    assert_response :success
    assert_select "h1", "Welcome"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "h1", "About Us"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "h1", "Contact Us"
  end

end
