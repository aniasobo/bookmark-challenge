require 'bookmark_manager'

describe BookmarkManager do

  describe '.create' do
    it 'adds a new bookmark to database' do
      new_bookmark = BookmarkManager.create('https://github.com/')
      expect(BookmarkManager.all).to include('https://github.com/')
    end
  end

  pending '.delete'
    pending 'deletes bookmark from db'
    
  xdescribe '.all' do
    it 'displays all bookmarks' do
      expect(BookmarkManager.all).to be_instance_of(Array)
      expect(BookmarkManager.all).to include('http://www.makersacademy.com')
      expect(BookmarkManager.all).to include('http://www.destroyallsoftware.com')
    end
  end

end
