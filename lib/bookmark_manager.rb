require 'pg'

class BookmarkManager
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end
    results = con.exec('SELECT url FROM bookmarks;') 
    results.map { |bookmarks| bookmarks['url'] } 
  end

  def initialize(url)
    con = PG.connect(dbname: 'bookmark_manager')
    con.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")
  end

  attr_reader :bookmarks

end
