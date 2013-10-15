require "test_helper"

feature "EditingAPost" do
  scenario "editing the post" do
    visit posts_path

    click_on 'Edit'
    fill_in 'Title', with: 'code of the day'
    fill_in 'Content', with: 'was edited'

    click_on 'Update Post'

    page.text.must_include 'code of the day'
    page.text.must_include 'was edited'

    page.text.must_include 'Post was successfully updated'

  end
end
