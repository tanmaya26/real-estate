require "application_system_test_case"

class InquiryRepliesTest < ApplicationSystemTestCase
  setup do
    @inquiry_reply = inquiry_replies(:one)
  end

  test "visiting the index" do
    visit inquiry_replies_url
    assert_selector "h1", text: "Inquiry Replies"
  end

  test "creating a Inquiry reply" do
    visit inquiry_replies_url
    click_on "New Inquiry Reply"

    fill_in "Company", with: @inquiry_reply.company_id
    fill_in "House", with: @inquiry_reply.house_id
    fill_in "Inquiry", with: @inquiry_reply.inquiry_id
    fill_in "Message", with: @inquiry_reply.message
    fill_in "User", with: @inquiry_reply.user_id
    click_on "Create Inquiry reply"

    assert_text "Inquiry reply was successfully created"
    click_on "Back"
  end

  test "updating a Inquiry reply" do
    visit inquiry_replies_url
    click_on "Edit", match: :first

    fill_in "Company", with: @inquiry_reply.company_id
    fill_in "House", with: @inquiry_reply.house_id
    fill_in "Inquiry", with: @inquiry_reply.inquiry_id
    fill_in "Message", with: @inquiry_reply.message
    fill_in "User", with: @inquiry_reply.user_id
    click_on "Update Inquiry reply"

    assert_text "Inquiry reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Inquiry reply" do
    visit inquiry_replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inquiry reply was successfully destroyed"
  end
end
