require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score', {:type => :feature}) do
  it('processes the user entry and returns scrabble score') do
    visit('/')
    fill_in('scrabble', :with => 'Brian')
    click_button('See score!')
    expect(page).to have_content(7)
  end
end
