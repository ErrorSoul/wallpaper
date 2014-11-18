FactoryGirl.define do
  sequence(:title) { |n| "Example title #{n}" }
  sequence(:text)  { |n| Faker::Lorem.sentence(4, false, 2)}
  factory :product do
    title 
    description "MyText"
    price "9.99"
    weight "9.99"
    height "9.99"
    marking Faker::Code.isbn
    collection 
    type
    paint
  end

end
