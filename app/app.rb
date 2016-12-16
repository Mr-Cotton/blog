
require 'sinatra'
require_relative '../lib/blog_posts'
require 'haml'

blog_post = BlogPost.new

get '/post_blog' do
  haml :post_blog
end

get '/' do
  haml :index
end

get '/post_comment' do
  haml :post_comment
end

get '/blog' do
  haml :view_blog
end

post '/blog' do
  blog_post << params[:data]
end