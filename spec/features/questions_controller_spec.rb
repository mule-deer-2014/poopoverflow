feature 'Users can see the responses and comments of a question' do
  scenario 'the user can click on a question' do
    go_home
    click_on_question
    find_link('Hello').visible?
  end
end

feature 'Users can post a question' do
  scenario 'the user posts a question' do
    post_question
    expect(page).to #add the new question to the homepage
end