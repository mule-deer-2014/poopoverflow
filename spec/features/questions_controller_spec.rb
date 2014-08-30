feature 'Users input something for grandma to respond to' do
  scenario 'the homepage prompts for input' do
    first_hit
    expect(page).to have_content("What do you have to say?")
  end

  scenario 'the user does not enter anything' do
    enter_phrase(nil)
    expect(page).to have_content("Say something silly!")
  end

  scenario 'user enters a lowercase string' do
    enter_phrase('hello')
    expect(page).to have_content('Speak up, kiddo!')
  end

  scenario 'user enters an uppercase string' do
    enter_phrase('HELLO')
    expect(page).to have_content('STOP YELLING AT ME AND RESPECT YOUR ELEDERS!')
  end
end