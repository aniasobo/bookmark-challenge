# As a user
# So that I can see my bookmarks
# I want to open my bookmark manager and see a list of bookmarks

feature 'view bookmarks list' do
  scenario 'loads index page' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end

  scenario 'displays default list of bookmarks' do
    visit('/')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end

  scenario 'bookmarks are active clickable links' do
    visit('/')
    expect(page).to have_link('http://www.makersacademy.com', :href => 'http://www.makersacademy.com')
    expect(page).to have_link('http://www.google.com', :href => 'http://www.google.com')
    expect(page).to have_link('http://www.destroyallsoftware.com', :href => 'http://www.destroyallsoftware.com')
  end
end
