require 'rails_helper'

RSpec.describe Category, type: :system do
  user = User.create!(name: 'Akbar', email: 'akbar@gmail.com', password: '123456')
group = Group.create!(user_id: user.id, name: 'test', icon: 'burger.png')

  subject do
    Category.new(user_id: user.id, name: 'test', amount: 20)
  end
  before do
    subject.save
  end

  describe 'index page' do
    it "I can see the categories's name" do
      visit category_transaction_index_path(group.id)
      page.has_content?(subject.name)
    end

    it "I can see the categories's amount." do
      visit category_transaction_index_path(group.id)
      page.has_content?(subject.amount)
    end
  end
end