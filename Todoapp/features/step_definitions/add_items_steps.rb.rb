Given(/^a user is on the landing page$/) do
  @screen.addItem.assert_title_displayed?
end

And(/^a user has selected add icon$/) do
  @screen.addItem.click_add_btn
end

When(/^the user adds item$/) do
  @screen.addItem.select_ok
end

Then(/^the item appears in the `Due` section$/) do
  @screen.addItem.verify_item_displayed?
end

