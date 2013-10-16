require "test_helper"

feature "as a site visitor I want a sign in option to keep my account private" do
  scenario "sign in" do
      # Given a registration form
    visit new_user_session_path
    Sign_in

    page.text.must_include "Signed in successfully."

  end
end
