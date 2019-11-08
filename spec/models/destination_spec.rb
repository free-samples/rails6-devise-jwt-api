require 'rails_helper'

RSpec.describe Destination, type: :model do
  it "is invalid" do
    expect(Destination.new).to be_invalid
  end
end
