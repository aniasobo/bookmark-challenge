require 'pg'

class BookmarkManager

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      @con = PG.connect(dbname: 'bookmark_manager_test')
    else
      @con = PG.connect(dbname: 'bookmark_manager')
    end
    results = @con.exec('SELECT url, title FROM bookmarks;') 
    results.map { |bookmarks| bookmarks['title'] } 
  end

  def self.create(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      @con = PG.connect(dbname: 'bookmark_manager_test')
    else
      @con = PG.connect(dbname: 'bookmark_manager')
    end
    @con.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
  end

  attr_reader :bookmarks

end
