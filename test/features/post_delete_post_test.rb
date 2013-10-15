require "test_helper"

feature "DeletingAPost" do
  scenario "delete the post" do
    visit posts_path
    click_on 'Destroy'

    page.text.wont_include "Code Fellows"
    page.text.wont_include "you learn to code"
  end
end
