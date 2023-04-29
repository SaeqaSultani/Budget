require 'rails_helper'

RSpec.describe Group, type: :system do
  user = User.new(id: 1, name: 'Saeqa', email: 'saeqa@gmail.com', password: '123456')

  subject do
    Group.new(user_id: user.id, name: 'test', icon: 'burger.png')
  end

  before do
    subject.save
  end

  describe 'index page' do
    it "I can see the group's name" do
      visit root_path
      page.has_content?(subject.name)
    end

    it "I can see the group's icon." do
      visit root_path
      page.has_content?(subject.icon)
    end
  end
end
