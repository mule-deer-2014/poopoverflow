module Features
  module SessionHelpers
    def go_home
      visit root_path
    end

    def enter_phrase(phrase)
      visit root_path
      fill_in 'Phrase', with: phrase
      click_button 'Say It'
    end
  end
end