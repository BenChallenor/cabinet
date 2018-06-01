require 'rails_helper.rb'

feature 'Docs index' do
  scenario 'Page has list of docs' do
    sign_up
    visit('/docs/new')
    fill_in 'Title', with: 'test doc'
    fill_in 'Content', with: 'test document'
    click_button 'Create Doc'
    visit('/docs')
    expect(page).to have_link('test doc')
    expect(page).to have_content('test document')
  end
end
