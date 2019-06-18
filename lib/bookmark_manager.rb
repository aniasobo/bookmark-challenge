require 'pg'

class BookmarkManager
  def self.all
    con = PG.connect(dbname: 'bookmark_manager')
    results = con.exec('SELECT url FROM bookmarks;')
    results.map { |bookmarks| bookmarks['url'] }
  end

  attr_reader :boookmarks

  def initialize
    @bookmarks = []
  end
end
