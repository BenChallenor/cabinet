require 'rails_helper.rb'

feature 'Delete' do
  scenario 'Doc can be deleted' do
    sign_up
    visit('/docs/new')
    fill_in 'Title', with: 'Delete test doc'
    fill_in 'Content', with: 'Delete test document'
    click_button 'Create Doc'
    click_link 'Delete Doc'
    page.accept_alert 'Are you sure?' do
      click_button('OK')
    end
    expect(page).to have_no_content('Delete test doc')
    expect(page).to have_no_content('Delete test document')
  end
end
