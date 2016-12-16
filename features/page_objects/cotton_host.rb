require 'page-object'
require 'data_magic'
include PageObject::PageFactory
require 'timecop'

class CottonHost
  include PageObject
  include DataMagic


  page_url 'http://localhost:4567'

  button(:new_blog, id: 'new_blog')
  button(:read_blog, id: 'read_blog')
  span(:date, id: 'date')
  def first_blog_entry
    @browser.div(id: 'post-0').text
  end

  def blog_count
    @browser.elements(:class => 'post').size
  end

  def exception
    raise 'An error has occured'
  end

  def older_post
    t = Time.local(1985, 9, 1, 10, 5, 0)
    Timecop.travel(t)
  end

  def newer_post
    Time.now
  end
end