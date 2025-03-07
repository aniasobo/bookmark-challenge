require 'sinatra/base'
require_relative 'lib/bookmark_manager'

class BookmarkApp < Sinatra::Base
  get '/' do
    @bookmarks = BookmarkManager.all
    erb :index
  end

  post '/new' do
    BookmarkManager.create(params[:url], params[:title])
    redirect '/'
  end

  run! if app_file == $0
end
