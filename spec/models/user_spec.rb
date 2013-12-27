require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "is invalid without a username" do
    expect(FactoryGirl.build(:user, username: nil, email:"123@234.com", password:12345678)).to_not be_valid
  end
  it "is invalid without a password" do
    expect(FactoryGirl.build(:user, username: "sampleuser", email:"123@234.com", password:nil)).to_not be_valid
  end
  it "can make a query (is this a controller spec?)"
  it "can make a response to a query (is this a controller spec?)"
end