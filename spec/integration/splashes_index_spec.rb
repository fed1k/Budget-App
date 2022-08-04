require 'rails_helper'

RSpec.describe 'Splashes', type: :system do
  describe 'index page' do
    it 'shoud go from splash screen to sign in page' do
      visit splash_path
      click_link 'LOG IN'
      expect(page).to have_text('Remember me')
    end

    it 'shoud go from splash screen to sign in page' do
      visit splash_path
      click_link 'LOG IN'
      find("input[placeholder='Name']").set "Firdavs"
      find("input[placeholder='Email']").set "allamurotovcoder@mail.ru"
      find("input[placeholder='Password']").set "fed1k2002"
      click_button('NEXT')
      expect(page).to have_text('Total amount')
    end

    it 'shoud go from splash screen to sign up page' do
      visit splash_path
      click_link 'SIGN UP'
      expect(page).to have_text('REGISTER')
    end
  end
end