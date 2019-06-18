require 'bookmark_manager'

describe BookmarkManager do
#  let(:link) { double :bookmark }

  describe '.all' do
    it 'displays all bookmarks' do
      expect(BookmarkManager.all).to be_instance_of(Array)
      expect(BookmarkManager.all.length).to eq 3
      expect(BookmarkManager.all).to include("http://www.makersacademy.com")
      expect(BookmarkManager.all).to include("http://www.destroyallsoftware.com")
    end
  end
end