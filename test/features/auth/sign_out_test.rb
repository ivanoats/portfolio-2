feature "as a site visitor I want a sign out option so my friends don't post funny stuffy" do
  scenario "sign out" do
      # Given a registration form
    visit projects_path
    click_on "Sign up"

    # When I register with valid info
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    page.text.must_include "Welcome! You have signed up successfully"

    click_on "Sign Out"
    page.text.must_include "Signed out successfully."
  end
end
