require 'rails_helper'

RSpec.describe 'Transaction page', type: :feature do
  before :each do
    @user1 = User.new(name: 'Saeqa', email: 'saeqa@gmail.com', password: '123456', confirmed_at: Time.now)
    @user1.save
    @category = Category.new(name: 'Travel', amount: '30')
    visit new_user_session_path
    fill_in 'Email', with: @user1.email
    fill_in 'Password', with: @user1.password
    click_button 'Log in'
    click_link 'Add New Category'
    fill_in 'Name', with: @category.name
    click_button 'Add Category'
  end

end