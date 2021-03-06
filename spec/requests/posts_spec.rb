require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "displays posts" do
      create(:post, title: "Moo title")
      visit posts_path
      page.should have_content("Moo title")
    end
  end

  describe "POST /posts" do
    it "create post" do
      visit new_post_path
      post = build(:post)
      fill_in "post_title",  :with => post.title
      fill_in "post_link",   :with => post.link
      fill_in "post_email",  :with => post.email
      click_button "Create Post"
      page.should have_content("Post was successfully created.")
      page.should have_content(post.title)
    end
  end
end
