RSpec.describe 'Category page', type: :feature do
  before :each do
    @user1 = User.new(name: 'Saeqa', email: 'saeqa@gmail.com', password: '123456')
    @user1.save
    visit new_user_session_path
    fill_in 'Email', with: @user1.email
    fill_in 'Password', with: @user1.password
    click_button 'Log in'
  end

  it 'should be able to get categories' do
    expect(page).to have_content('Categories')
  end

  it 'should be able to redirect to add new category' do
    click_link 'Add New Category'
    expect(page).to have_current_path(new_category_path)
  end

  it 'should be able to save category' do
    click_link 'Add New Category'
    fill_in 'Name', with: 'Travel'
    fill_in 'Icon', with: 'travel.png'
    click_button 'Add Category'
    expect(page).to have_content('Travel')
  end
end
