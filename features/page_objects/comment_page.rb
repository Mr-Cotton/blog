require 'page-object'
include PageObject::PageFactory

class CommentPage
  include PageObject
  include DataMagic
  page_url 'http://localhost:4567/post_comment'

    text_field(:author, name: 'comment')
    text_field(:title, name: 'name')
    button(:'post_comment.haml', id: 'post_button')

  def populate_page
    populate_page_with data_for :new_blog
    sleep 3
  end
  def click_submit
    browser.button(:value => 'Submit').click
    sleep 4
  end
end