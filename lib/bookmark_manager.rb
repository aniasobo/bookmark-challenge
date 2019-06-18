require 'pg'

class BookmarkManager

  def initialize
    @bookmarks = []
  end

  def all
    con = PG.connect( dbname: 'bookmark_manager' )
    results = con.exec( 'SELECT url FROM bookmarks;' )
    results.map { |bookmarks| bookmarks['url'] }
  end
end