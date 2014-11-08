require 'spec_helper'

describe Country do
  before do 
    @country = Country.new(name: "Russia")
  end
  
  subject { @country }
  it { should respond_to(:name)}
  it { should respond_to(:labels)}
  

  describe "when country name is not present" do
    before { @country.name = " "}
    it {should be_invalid}
  end

  describe "when country name is too short" do
    before { @country.name = "a" * 2 }
    it {should be_invalid}
  end
 
end
