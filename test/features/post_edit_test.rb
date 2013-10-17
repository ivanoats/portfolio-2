require "test_helper"

feature "EditingAPost" do
  scenario "editing the post" do
    sign_in_user
    visit post_path(posts(:cf))

    click_on 'Edit'
    fill_in 'Title', with: posts(:cf).title
    fill_in 'Content', with: posts(:cf).content

    click_on 'Update Post'

    page.text.must_include posts(:cf).title
    page.text.must_include posts(:cf).content

    page.text.must_include 'Post was successfully updated'

  end
end
