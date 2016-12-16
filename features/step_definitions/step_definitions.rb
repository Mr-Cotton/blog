require 'page-object'
include PageObject::PageFactory

When (/^I comment on a post$/) do
  visit_page(CommentPage) do |page|
    page.populate_page
    page.click_submit
  end
end
Then (/^I should be able to comment again$/) do

end
When (/^I click on a post$/) do

end
Then (/^I should see all the comments and authors names$/) do

end
When (/^I read the comments$/) do

end
Then (/^the comments should be oldest on the top$/) do

end
When (/^I create a new post$/) do

end
Then (/^I should be allowed to enter title, content, author name$/) do

end
When (/^I enter in the title, content, and author name$/) do

end
Then (/^I will create my post$/) do

end
When (/^I enter in the same title as a previous post$/) do

end
Then (/^I receive an error message$/) do

end
When (/^a post date is checked$/) do

end
Then (/^It should be more recent than the last post$/) do

end
When (/^I get the posts on the page$/) do

end
Then (/^I should see the 10 most recently posted$/) do

end
When (/^I visit cotton blog$/) do

end
Then (/^The author name and title should be on the post$/) do

end
When (/^I click the title of a post$/) do

end
Then (/^I should be taken to the entire post$/) do

end
When (/^I view a post$/) do

end
Then (/^I should see the title and author name on the post$/) do

end