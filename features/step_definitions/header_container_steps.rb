Then(/^I see a header containing following options$/) do |list|
 confirm_header_tabs
end

When(/^I select a tab$/) do
 select_header_tab
end
