require 'spec_helper'

describe Answer do
  it "is voted on by a user (controller spec?)"
  it "belongs to a query" do
    expect(FactoryGirl.build(:answer, query_id: nil, answer: "Yes", votes: 5)).to_not be_valid
  end
  it "has a valid factory" do
    expect(FactoryGirl.create(:answer)).to be_valid
  end
  it "is a string response to a query" do
    expect(FactoryGirl.build(:answer, query_id: 1, answer: nil, votes: 5)).to_not be_valid
  end
  it "has a measure of total votes receives (controller spec)"
  it "has an positive integer value for votes" do
    expect(FactoryGirl.build(:answer, query_id: 1, answer: "Yes", votes: 0)).to be_valid
    expect(FactoryGirl.build(:answer, query_id: 1, answer: "Yes", votes: -1)).to_not be_valid
    expect(FactoryGirl.build(:answer, query_id: 1, answer: "Yes", votes: "five")).to_not be_valid
    expect(FactoryGirl.build(:answer, query_id: 1, answer: "Yes", votes: nil)).to_not be_valid
  end
end