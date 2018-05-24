require 'rails_helper.rb'

feature 'Index' do
  scenario 'Welcome page' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
