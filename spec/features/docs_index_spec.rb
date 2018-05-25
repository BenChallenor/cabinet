require 'rails_helper.rb'

feature 'Docs index' do
  scenario 'Page has list of docs' do
    visit('/docs/new')
    fill_in 'Title', with: 'test doc'
    fill_in 'Content', with: 'test doc'
    click_button 'Create Doc'
    visit('/docs')
    expect(page).to have_content('test doc')
    expect(page).to have_content('test doc')
  end
end
