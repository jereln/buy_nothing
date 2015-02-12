require 'test_helper'

feature 'user accounts with devise' do
  scenario 'creating an account' do
    visit new_user_registration_path
    fill_in 'Email', with: 'new_user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign up'
    page.must_have_content 'Sign Out'
    page.must_have_content 'new_user@example.com'
    page.wont_have_content 'Sign In'
  end

  scenario 'signing in to an existing account' do
    sign_in(:user1)
    page.must_have_content 'Sign Out'
    page.must_have_content 'user@example.com'
    page.must_have_content 'Signed in successfully'
    page.wont_have_content 'Sign In'
  end

  scenario 'signing in with the wrong password' do
    visit new_user_session_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'incorrect password'
    click_on 'Log in'
    save_and_open_page
  end
end
