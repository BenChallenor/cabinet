require 'rails_helper.rb'

feature 'Show doc' do
  scenario 'Page has doc created' do
    visit('/docs/new')
    fill_in 'Title', with: 'test title'
    fill_in 'Content', with: 'test content'
    click_button 'Create Doc'
    expect(page).to have_content('test title')
    expect(page).to have_content('test content')
  end
end
