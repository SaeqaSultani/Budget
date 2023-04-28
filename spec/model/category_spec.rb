require 'rails_helper'

RSpec.describe Category, type: :model do
    subject { Category.new(name: "Sports",amount: 3) }

    before { subject.save }

    it "should have a name" do
        expect(subject.name).to eq("Sports")
    end

    it 'amount should be present' do
        subject.amount = nil
        expect(subject).to_not be_valid
      end
end