require 'page-object'
include PageObject::PageFactory

class CommentPage
  include PageObject
  include DataMagic
  page_url 'http://localhost:4567/post_comment'

    text_field(:comment, id:'post_body')
    button(:'post_comment.haml', id: 'post_button')

  def populate_page
    populate_page_with data_for :my_page
  end

  def click_submit
    browser.button(:value => 'Submit').click
    sleep 4
  end
end