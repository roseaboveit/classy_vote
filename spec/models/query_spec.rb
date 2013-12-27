require 'spec_helper'

describe Query do
  it "belongs to an asker user" do
    expect(FactoryGirl.build(:query, user_id: nil)).to_not be_valid
  end
  it "question isn't nil" do
    expect(FactoryGirl.build(:query, question: nil)).to_not be_valid
  end
  it "has a valid factory" do
    expect(FactoryGirl.create(:query)).to be_valid
  end
end