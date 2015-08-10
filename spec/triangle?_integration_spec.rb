require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns the correct type of triangle') do
    visit('/')
    fill_in('side 1', :with => '10')
    fill_in('side 2', :with => '10')
    fill_in('side 3', :with => '10')
    click_button('Send')
    expect(page).to have_content('Equilateral Triangle')
  end
end
