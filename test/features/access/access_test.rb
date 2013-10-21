require "test_helper"
# test to make sure only the editor or author can delete other peoples posts

def authority
    sign_in_user
    visit post_path
    click_link("Destory", "/posts/13")
    page.wount_have_content "awesome"
end

