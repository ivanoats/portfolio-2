require "test_helper"

feature "VisitingThePostIndex" do

  scenario "creates a post successfully" do
    #Given a completed post form
    sign_in_user
    visit posts_path
    click_on "New Post"
    fill_in 'Title', with: posts(:cf).title
    fill_in 'Content', with: posts(:cf).content

    # when I submit the form
    click_on 'Create Post'

    # then I should see the post

    page.text.must_include posts(:cf).title
    page.text.must_include posts(:cf).content

    # and a success message
    page.text.must_include 'Post was successfully created'
  end
end
