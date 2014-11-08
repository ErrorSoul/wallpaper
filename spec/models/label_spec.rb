require 'spec_helper'

describe Label do
  before do
    @country = Country.new(name: "Russia")
    @label = @country.labels.build(name: "Porshe")
  end

subject { @label }
  it { should respond_to(:name)}
  it {should respond_to(:country_id)}
end
