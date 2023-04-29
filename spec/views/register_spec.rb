require 'rails_helper'

RSpec.describe 'Register page', type: :feature do
  before :each do
    @user = User.new(name: 'saeqa', email: 'saeqa@gmail.com', password: '123456',
                     password_confirmation: '123456')
    visit new_user_registration_path
  end

  it 'I can see the input in register page' do
    expect(page).to have_field 'Name'
    expect(page).to have_field 'Email'
    expect(page).to have_field 'Password'
    expect(page).to have_field 'Password confirmation'
    expect(page).to have_button 'Sign up'
  end
end