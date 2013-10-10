require "test_helper"

feature "DeletingAPost" do
  scenario "delete the post" do
    visit post_path
    click_on 'Destroy'

    page.text.wont_include "Code Fellows"
    page.text.wount_include "you learn to code"
  end
end
