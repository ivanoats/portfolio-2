require "test_helper"

feature "DeletingAPost" do
  scenario "delete the post" do
    sign_in_user
    visit posts_path
    click_on 'Destroy'

    page.text.wont_include "Code Fellows"
    page.text.wont_include "you learn to code"
  end
end
