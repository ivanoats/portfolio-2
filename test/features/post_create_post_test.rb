require "test_helper"

feature "VisitingThePostIndex" do
  focus
  scenario "creates a post successfully" do
    #Given a completed post form
    visit posts_path
    click_on "New Post"
    fill_in 'Title', with: 'Code Fellows'
    fill_in 'Content', with: 'you learn to code'

    # when I submit the form
    click_on 'Create Post'

    # then I should see the post

    page.text.must_include 'Code Fellows'
    page.text.must_include 'you learn to code'

    # and a success message
    page.text.must_include 'Post was successfully created'
  end
end
