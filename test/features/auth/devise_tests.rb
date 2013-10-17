require "test_helper"

feature"
  As a site visitor I want to be able to sign up for an account
  so that I can perform actions that require me to be logged in." do
  scenario "sign up" do
    # Given a registration form
    visit root_path
    click_on "Sign Up"

    # When I register with valid info
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    # Then I should be signed up
    page.text.must_include "Welcome! You have signed up successfully"
  end

    scenario "sign out" do
      # Given a registration form
    visit root_path
    click_on "Sign Up"
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: users(:one).encrypted_password
    fill_in "Password confirmation", with: users(:one).encrypted_password
    click_on "Sign up"
    click_on "Sign out"


    page.text.must_include "Signed out successfully"
  end
end
