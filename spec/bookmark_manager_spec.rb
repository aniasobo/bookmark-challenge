require 'bookmark_manager'

describe BookmarkManager do

  describe '.create' do
    it 'adds a new bookmark to database' do
      new_bookmark = BookmarkManager.create('https://github.com/', 'GitHub')
      expect(new_bookmark).to be_instance_of(PG::Result)
   #   expect(BookmarkManager.all).not_to include('https://github.com/')
   #   expect(BookmarkManager.all).to include('GitHub')
    end
  end

  pending '.delete'
    pending 'deletes bookmark from db'
    
  describe '.all' do
    it 'displays all bookmarks' do
      BookmarkManager.create('https://github.com/', 'GitHub')
      expect(BookmarkManager.all).to eq(['GitHub'])
    end
  end

end
