require "test_helper"

feature "DeletingAProjectPost" do
  scenario "delete the projectPost" do
    visit projects_path
  page.find("div#project_#{projects(:one).id}").click_on "Destroy"
    page.text.wont_include "Rails"
  end
end
