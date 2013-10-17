require "test_helper"

feature "CanAccessHome" do
  scenario "the test is sound" do
    #visit root_path
    visit "/"
    page.must_have_content "Welcome aboard"
    page.wont_have_content "Goodbye All!"
  end
end
