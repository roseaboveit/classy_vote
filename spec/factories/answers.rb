FactoryGirl.define do
  factory :answer do |f|
    f.query_id 1
    f.answer "Yes"
    f.votes 2
  end
end