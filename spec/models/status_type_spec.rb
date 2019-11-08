require 'rails_helper'

RSpec.describe StatusType, type: :model do
  
  it "is valid" do
    expect(StatusType.new).to be_valid
  end

  it "has many statuses" do
    Fabricate(:status)
    Fabricate(:status, name: 'inactive')
    expect(StatusType.first.statuses.size).to be > 0
  end

end
