require 'sinatra/base'
require_relative 'lib/bookmark_manager'

class BookmarkApp < Sinatra::Base
  get '/' do
    @bookmarks = BookmarkManager.all
    p ENV
    erb :index
  end

  post '/new' do
    @bookmarks = BookmarkManager.new(params[:url])
    redirect '/'
  end

  run! if app_file == $0
end
