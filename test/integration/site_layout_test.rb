require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
  	get root_path
  	assert_template "pages/index"
  	assert_select "a[href=?]", root_path, count: 2
  	assert_select "a[href=?]", about_path, count: 2
  	assert_select "a[href=?]", contact_path, count: 2
  	assert_select "a[href=?]", posts_path
  	get about_path
  	assert_select "h1", "About Us"

  end
end
