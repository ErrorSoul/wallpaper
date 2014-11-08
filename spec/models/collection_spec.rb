require 'spec_helper'

describe Collection do
 before do 
    @label = Label.create(name: "Porshe")
    @collection = @label.collections.build(name: "Vinil")
  end

  subject { @collection }
  it { should respond_to(:name)}
  it { should respond_to(:label_id)}

  
  describe "when collection name is not present" do
    before { @collection.name = " "}
    it {should be_invalid}
  end

  describe "when collection name is too short" do
    before { @collection.name = "a" * 2 }
    it {should be_invalid}
  end
  

   describe "when label  is not present" do
    before { @collection.label_id = nil }
    it {should be_invalid}
  end

  describe "correct save" do 
    before do  
      @label = Label.create(name: "New Label", country_id: 1)
      puts @label.id, "FDSFKFJF"
      @collection.label_id = @label.id
      @collection.save
      end
    it {should be_valid}
  end
end
