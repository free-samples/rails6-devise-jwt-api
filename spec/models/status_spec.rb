require 'rails_helper'

RSpec.describe Status, type: :model do
  it "is invalid when empty status_type" do
    expect(Status.new).to be_invalid
  end

  it "is valid when empty status_type" do
    status_type = Fabricate(:status_type)
    expect(Status.new(status_type: status_type)).to be_valid
  end

  it "returns active scope" do
    Fabricate(:status)
    Fabricate(:status, name: 'inactive')
    expect(Status.active.size).to eq 1
  end

  it "returns active status value" do
    Fabricate(:status)
    Fabricate(:status, name: 'inactive')
    expect(Status::active_status.name).to eq 'active'
  end

  it "returns inactive scope" do
    Fabricate(:status)
    Fabricate(:status, name: 'inactive')
    expect(Status.inactive.size).to eq 1
  end

  it "returns inactive status value" do
    Fabricate(:status)
    Fabricate(:status, name: 'inactive')
    expect(Status::inactive_status.name).to eq 'inactive'
  end

end
