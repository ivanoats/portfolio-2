require "test_helper"

feature "DeletingAProjectPost" do
  scenario "delete the projectPost" do
    visit posts_path
    click_on 'Destroy'

    page.text.wont_include "Code Fellows"
    page.text.wont_include "you learn to code"
  end
end
