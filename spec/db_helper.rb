require 'pg'

def test_db_connect
  plug = PG.connect(dbname: 'bookmark_manager_test')

  # to clean the bookmarks table:
  # plug.exec("TRUNCATE bookmarks;")
end

def test_bookmarks
  plug = PG.connect(dbname: 'bookmark_manager_test')
  test_results = plug.exec('SELECT url FROM bookmarks;')
  test_results.map { |bookmarks| bookmarks['url'] }
end
