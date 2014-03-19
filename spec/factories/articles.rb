# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    name "MyString"
    published_on "2014-03-17"
    content "MyText"
  end
end
