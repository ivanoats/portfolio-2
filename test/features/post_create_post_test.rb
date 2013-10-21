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


    scenario "authors can't publish" do
        sign_in_user
        visit new_post_path
        page.wont_have_field('published')
    end

#     scenario "as an editor I want to be able to publish a post" do
#         sign_in_user
#         click_on "Edit Post"
#         click_on "Publish"
#         click_on "Update Post"
#         page.text.must_include 'Published'
#     end
# end
