require 'spec_helper'

describe Country do
  before do 
    @country = Country.new(name: "Russia")
  end
  
  subject { @country }
  it { should respond_to(:name)}
  it { should respond_to(:labels)}
  
 
end
