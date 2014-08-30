feature 'Users can see the responses and comments of a question' do
  scenario 'the user goes to the homepage to see all questions' do
    go_home
    expect(page).to have_content(#question#)
  end

  scenario 'the user clicks on a question' do
    click_on_question
    expect(page).to have_content(#question, answer, comments)
  end
end

feature 'Users can post a question' do
  scenario 'the user posts a question' do
    post_question
    expect(page).to #add the new question to the homepage
end