require 'sinatra'
require 'haml'
require 'faker'
posts = Array.new

class Post
  attr_accessor :title, :author, :content, :date
end

get '/' do
  haml :index, :format => :html5, :locals => {:posts => posts}
end

get '/post_blog' do
  haml :post_blog
end

get '/post_comment' do
  haml :post_comment
end

post '/blog' do
  a = Post.new
  a.title = params[:title]
  a.author = params[:author]
  a.content = params[:content]
  a.content = params[:date]
  posts.unshift(a)

  haml :index, :locals => {:new_post => posts}
end

get '/view_blog' do
  index = params[:b].to i
  haml :full_blog_post, :locals => {:the_post => posts[index]}
end

post '/post_comment' do
  haml :post_comment
  comment = params[:comment] || Faker::Hipster.sentence
  name = params[:name] || Faker::Internet.email
  haml :post_comment, :locals => {'comment' => comment, 'name' => name}
end

get '/post_comment' do
  haml :post_comment
end