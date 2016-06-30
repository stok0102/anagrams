require('capybara/rspec')
require('launchy')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagrams path', {:type => :feature}) do
  it('should gather user input and direct to a page with the anagrams') do
    visit('/')
    fill_in('user_word', :with => 'poodoo')
    fill_in('anagrams', :with => 'poodoo oodoop odooop pooood bannanaagraams')
    click_button('submit')
    expect(page).to have_content('poodoo oodoop odooop pooood')
  end
end
