require 'spec_helper'

describe Label do
  before do
    @country = Country.new(name: "Russia")
    @label = @country.labels.build(name: "Porshe")
  end

subject { @label }
  it { should respond_to(:name)}
  it {should respond_to(:country_id)}


  
  describe "when label name is not present" do
    before { @label.name = " "}
    it {should be_invalid}
  end

  describe "when label name is too short" do
    before { @label.name = "a" * 2 }
    it {should be_invalid}
  end
 

  describe "when country is not present" do
    before { @label.country_id = nil }
    it {should be_invalid}
  end

  describe "when country don't save" do
    before {@label.save}
    it {should be_invalid}
  end

  describe "when country don't save" do
    before {@label.save}
    it {should be_invalid}
  end

  describe "correct save" do
    before do
    
      @label.country_id = 2
      @label.save
    end
    it {should be_valid} 
  end
end
