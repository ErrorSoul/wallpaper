FactoryGirl.define do
  factory :collection do |f|
    f.sequence(:name) { |n| "#{Faker::Name.name} #{n}" }
    label 
  end

end
