FactoryGirl.define do
  factory :country do |f|
    f.sequence(:name) { |n| "#{Faker::Name.name} #{n}" }
 end

end
