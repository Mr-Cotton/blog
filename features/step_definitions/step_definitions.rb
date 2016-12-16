require 'page-object'
include PageObject::PageFactory
require 'faker'
require 'timecop'

When (/^I comment on a post$/) do
  visit_page(CommentPage) do |page|
    page.populate_page
    page.click_submit
  end
end

Then (/^I should be able to comment again$/) do
  on_page(CommentPage) do |page|
    page.populate_page
    page.click_submit
  end
end

When (/^I create a new post$/) do
  visit_page(CreatePage)
  on CreatePage do |page|
    page.new_blog
    page.click_submit
  end
end

Then (/^It should be more recent than the last post$/) do
  visit_page(CottonHost) do |page|
    expect(page.older_post).to be < (page.newer_post)
  end
end

When (/^I enter in the same title as a previous post$/) do
  visit_page(CreatePage) do |page|
    page.new_blog
  on CreatePage do |page|
    page.save
  end
end
end
Then (/^I receive an error message$/) do
  on_page(CreatePage)
  expect{raise "An error has occured"}.to raise_error(RuntimeError)
end

When (/^I get the posts on the page$/) do
  visit_page(CottonHost)
end
Then (/^I should see the 10 most recently posted$/) do
  on_page(CottonHost) do |page|
    expect(page.blog_count).to be <= 10
  end
end

When (/^I click the title of a post$/) do
  visit_page(CreatePage)
  on CreatePage do |page|
    page.new_blog
  end
  on CreatePage do |page|
    page.save
  end
  visit_page(CottonHost)
end
Then (/^I should be taken to the entire post$/) do
  on_page(CreatePage) do |page|
    expect(page.full_blog).to eq 1
  end
end