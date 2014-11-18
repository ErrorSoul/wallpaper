FactoryGirl.define do
  factory :label do
    name { |n| "#{Faker::Name.name} #{n}" }
    country
  end

end
