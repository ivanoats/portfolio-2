require "test_helper"

feature "as a developer I want to boostrap things for success" do
  scenario "check for bootstrap" do
    visit root_path
    page.has_css? "col-"
  end
end
