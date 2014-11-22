require 'spec_helper'
require 'pry'
describe Clue  do
  
 
  before do 
    
    @clue = Clue.new(title: "SuperClue",
                      price: 100.4,
                      weight: 39.2,
                      consumption: "0/2kg",
                      vendor: "Factory of Clue",
                      country_id: 1,
                      clue_type_id: 2,
                      marking: "112-3xld-233")
  end


  subject{@clue}
  
  
  describe "clue model" do
     

   %i(title price weight consumption 
      vendor country_id clue_type_id 
      marking asset line_items).each do |i|
      it {should respond_to(i)}
    end
  
  it {should be_valid}

  end


  describe "when . attr not present" do
    %i(title price weight consumption 
       vendor country_id  clue_type_id marking).each do |x|
      describe "#{x} is nil" do 
        before {@clue.send("#{x}=", nil)}
        it {should be_invalid}
      end
    end
  end


 describe "when . attr not present " " " do
    %i(title consumption 
       vendor  marking).each do |x|
      describe "#{x} is nil" do 
        before {@clue.send("#{x}=", " ")}
        it {should be_invalid}
      end
    end
  end
  
   describe "when attr is too short " do
    %i(title consumption 
       vendor  marking).each do |x|
      describe "(#{x})" do 
        before {@clue.send("#{x}=", ("a" * 2))}
        it {should be_invalid}
      end
    end
  end

  describe "when marking is too long" do 
    before { @clue.marking = "a" * 26}
    it { should be_invalid }
  end

  

describe "numeric test" do
  %i(price weight).each do |x|
  describe "when (#{x}) < 0 " do
    before { @clue.send("#{x}=", -1) }
    it { should be_invalid }
  end


  describe "when (#{x}) = 0" do
    before { @clue.send("#{x}=", 0) }
    it { should be_invalid }
  end

  describe "when (#{x}) = 0" do
    before { @clue.send("#{x}=", 0.01) }
    it { should be_valid }
  end


    end
  end
  
end
