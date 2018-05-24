require 'rails_helper.rb'

feature 'Testing infrastructure' do
  scenario 'App loads and content is displayed' do
    visit('/docs/new')
    expect(page).to have_content('New Doc')
  end
end

feature 'Create doc' do
  scenario 'Page has create form and create button' do
    visit('/docs/new')
    expect(page).to have_button('Create Doc')
  end
end
