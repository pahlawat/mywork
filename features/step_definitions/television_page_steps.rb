Given(/^I am on the Television page$/) do
  television_page.load
end

Then(/^I see a list of televisions/) do
  confirm_product_available
end

Then(/^I can see the following information$/) do |type|
  confirm_product_attributes
end

And(/^I add an item to compare$/) do
  add_item_to_compare
end

Then(/^I see the item added in the panel$/) do
  confirm_item_added
  confirm_item_panel
end

When(/^I select to see the reviews$/) do
  select_item_review
end

Then(/^I am taken to the reviews page$/) do
  check_review_page
end

When(/^I remove the item from compare panel$/) do
  add_item_to_compare
  remove_item
end

Then(/^the item is removed from compare panel$/) do
  confirm_item_removed
end

And(/^I see (.*) to sort my results from the filter$/) do |options|
  filter_sort_order(options)
end

And (/^I see a pagination bar on the page$/) do
  confirm_pagination
end