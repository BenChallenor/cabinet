require 'rails_helper.rb'

feature 'Edit' do
  scenario 'Doc can be edited' do
    visit('/docs/new')
    fill_in 'Title', with: 'Edit test title'
    fill_in 'Content', with: 'Edit test content'
    click_button 'Create Doc'
    click_link 'Edit Doc'
    fill_in 'Title', with: 'Changed title'
    fill_in 'Content', with: 'Changed content'
    click_button 'Update Doc'
    expect(page).to have_content('Changed title')
    expect(page).to have_content('Changed content')
  end
end
