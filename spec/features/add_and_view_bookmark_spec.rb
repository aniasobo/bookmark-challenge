# As a user
# So that I can see my bookmarks
# I want to open my bookmark manager and see a list of bookmarks

# As a user
# so that I don't lose my bookmarks
# I want to be able to add a bookmark and see it on the list

feature 'Adding bookmarks' do 
  scenario 'loads the add bookmark form' do
    visit('/')
    expect(page).to have_button('Add bookmark')
  end
  
  scenario 'when form completed bookmark is displayed' do
    visit('/')
    fill_in 'url', with: 'real url'
    fill_in 'title', with: 'GOOGLE'
    click_button 'Add bookmark'
    expect(page).not_to have_content('real url')
    expect(page).to have_content('GOOGLE')
  end
end