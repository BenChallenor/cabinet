require 'rails_helper.rb'

feature "Testing infrastructure" do
  scenario "App loads and content is displayed" do
    visit '/'
    expect(page).to have_content('FileCabinet')
  end
end
