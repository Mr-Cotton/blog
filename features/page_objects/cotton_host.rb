require 'page-object'
require 'data_magic'
include PageObject::PageFactory

class CottonHost
  include PageObject
  include DataMagic


  page_url 'http://localhost:4567'

  button(:submit, :id => 'submit', :value => 'Add')
  link(:blog_title, id: 'post_title')
  link(:create, id: 'create_post')
end