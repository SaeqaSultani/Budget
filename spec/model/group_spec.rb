require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'mcD', icon: 'mcd.png') }

  before { subject.save }

  it 'should have a name' do
    expect(subject.name).to eq('mcD')
  end

  it 'icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
end
