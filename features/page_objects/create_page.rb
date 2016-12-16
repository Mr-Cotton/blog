require 'page-object'
require 'data_magic'
include PageObject::PageFactory

class CreatePage
  include PageObject
  include DataMagic
  page_url 'http://localhost:4567/post_blog'

  text_field(:author, name: 'author')
  text_field(:date, name: 'date')
  text_field(:title, name: 'title')
  text_field(:content, name: 'content')
  button(:save, :id => 'submit')

  def new_blog
    populate_page_with data_for :post_blog
  end

  def full_blog
    @browser.elements(:class => 'post').size
  end

  def click_submit
    browser.button(:value => 'submit').click
    sleep 4
  end
end