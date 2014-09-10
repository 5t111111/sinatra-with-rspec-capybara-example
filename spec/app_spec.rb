require_relative '../app'

describe App do

  Capybara.app = App

  describe 'Home page', type: :feature do
    before { visit '/' }
    subject { page }
    it 'includes h1 "Capybara Test Page"' do
      expect(subject).to have_selector('h1', text: 'Capybara Test Page')
    end
    it 'includes p "Hello Capybara!"' do
      expect(subject).to have_selector('p', text: 'Hello Capybara!')
    end
  end
end
