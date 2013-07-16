require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest
	test "new user can sign up for an account" do
	
		visit '/'
		assert page.has_button?('Create a free account!'), "Couldn't find 'Create a free account! on home page'"
		click_button 'Create a free account!'
		user = FactoryGirl.build(:user)
		fill_in "user[email]", 			 with: user.email
    fill_in "user[first_name]",  with: user.first_name
    fill_in "user[last_name]", 	 with: user.last_name
    fill_in "user[password]",    with: user.password
    click_button 'Create your free account'

    assert page.has_content? user.first_name
    assert_equal "Welcome aboard!", find('.notice').text
	end	

	test "failed registration" do
		visit '/'
		click_button 'Create a free account!'
		user = FactoryGirl.build(:user)
		fill_in "user[email]", with: user.email
		click_button "Create your free account"
		assert page.has_no_content? user.first_name
		assert_equal users_path, current_path
	end
end
