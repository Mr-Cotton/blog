require 'page-object'
require 'data_magic'
include PageObject::PageFactory

class CreatePage
  include PageObject
  page_url 'http://localhost:4567/post_blog'

  text_field(:author, name: 'author')
  text_field(:date, name: 'date')
  text_field(:title, name: 'title')
  text_area(:post, name: 'post')

  def create_cotton_blog
    data = data_for :create
    populate_page_with data
    self.submit
    data
  end
end