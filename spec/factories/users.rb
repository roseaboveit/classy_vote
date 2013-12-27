FactoryGirl.define do
  factory :user do |f|
    f.username "firstuser"
    f.email "123@123.com"
    f.password "12345678"
  end
end