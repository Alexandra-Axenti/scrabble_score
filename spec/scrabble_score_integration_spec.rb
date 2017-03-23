require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the scrabble score path', {:type => :feature}) do
    it('processes the user entry and returns an array of all the words paired each with its score') do
      visit('/')
      fill_in('sentence', :with => "hello, tomorrow friends newbies,cool, people, new")
      click_button('Go')
      expect(page).to have_content("hello: 8 tomorrow: 13 friends: 11 newbies: 12 cool: 6 people: 10 new: 6")
    end
  end
