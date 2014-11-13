FactoryGirl.define do
  factory :product do
    title Faker::Address.state
    description "MyText"
    price "9.99"
    weight "9.99"
    height "9.99"
    marking Faker::Code.isbn
    collection 
    type
  end

end
