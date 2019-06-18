require 'pg'

class BookmarkManager
  def self.all
    con = PG.connect(dbname: 'bookmark_manager')
    results = con.exec('SELECT url FROM bookmarks;') 
    results.map { |bookmarks| bookmarks['url'] } 
  end

  def self.add(new_bookmark)
    con = PG.connect(dbname: 'bookmark_manager')
    con.exec("INSERT INTO bookmarks (url) VALUES ('#{new_bookmark}');")
  end

  attr_reader :boookmarks

  def initialize
    @bookmarks = []
  end
end
