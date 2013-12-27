FactoryGirl.define do
  factory :query do |f|
    f.question "Do you like Ada?"
    f.user_id 1
  end
end