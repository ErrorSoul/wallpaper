FactoryGirl.define do
  sequence(:title) { |n| "Example title #{n}" }
  sequence(:text)  { |n| Faker::Lorem.sentence(4, false, 2)}
  sequence(:marking) {|n| Faker::Code.isbn + Random.rand(100).to_s + ('a'..'z').to_a.sample + n.to_s}
  
  factory :product do |x|
    title 
    description "MyText"
    price "9.99"
    weight "9.99"
    height "9.99"
    marking
    #marking  {|z| Faker::Code.isbn + Random.rand(100).to_s + ('a'..'z').to_a.sample }
    collection 
    type
    paint
  end

end
