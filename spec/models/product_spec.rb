require 'spec_helper'

describe Product do
  before do
    @country = Country.create(name: "Russia")
    @label = @country.labels.create(name:"Porshe")
    @collection = @label.collections.create(name: "Vinil")
    @product = @collection.products.build(title: "The best wallpaper",
                                          price: 100.0,
                                          description: "Perhaps, this is the best wallpaper",
                                          marking: "1223mn",
                                          weight: 0.5, 
                                          height: 10.5,
                                          type_id: 1,
                                          paint_id: 1)
  end

  subject { @product  }
  it { should respond_to(:title)}
  it { should respond_to(:price)}
  it { should respond_to(:description)}
  it { should respond_to(:marking)}
  it { should respond_to(:weight)}
  it { should respond_to(:height)}
  it { should respond_to(:collection_id)}
  it { should respond_to(:asset) }
  it { should respond_to(:type_id)}
  it { should respond_to(:paint_id)}
  
  it { should be_valid }


  #title 
  describe "when title is not present" do 
    before { @product.title =  " "}
    it { should_not be_valid }
  end

  describe "title is too long" do 
    before { @product.title = "a" * 101 }
    it { should be_invalid }
  end

  describe "title is too short" do
    before  {@product.title = "a" * 2}
    it { should be_invalid }
  end
  
  #price 
  describe "when price in not present" do 
    before { @product.price = nil }
    it { should be_invalid }
  end

  describe "when price < 0 " do 
    before {  @product.price = -1 }
    it { should be_invalid }
  end

  describe "when price equal zero " do
    before { @product.price = 0 }
    it { should be_invalid }
  end

  describe "when price is ok " do 
    before { @product.price = 1.02 }
    it { should be_valid }
  end
  #marking 
  describe "when marking is not present" do
    before { @product.marking = " "}
    it { should be_invalid }
  end

  describe "when marking is too long" do 
    before { @product.marking = "a" * 26}
    it { should be_invalid }
  end

  describe "when marking it too short" do 
    before { @product.marking = "a" * 2 }
    it {should be_invalid }

  end
  #height and weight 
  describe "when height is not present" do
    before { @product.height = nil }
    it { should be_invalid }
  end

  describe "when weight is not present" do
    before { @product.weight = nil }
    it { should be_invalid }
  end


  describe "when height is < 0 " do
    before { @product.height = -1 }
    it {should be_invalid }
  end

  describe "when weight is < 0 " do
    before { @product.weight = -1 }
    it {should be_invalid }
  end

  describe "when height equal = 0 " do 
    before { @product.height = 0 }
    it { should be_invalid }
  end

  describe "when weight equal = 0 " do 
    before { @product.weight = 0 }
    it { should be_invalid }
  end
  

  describe "correct save" do 
    before {@product.save}
    it {should be_valid}
  end


  #collection_Id
  
  describe "without collection_id" do
    before { @product.collection_id = nil}
    it {should be_invalid}
  end

  describe "without type_id" do 
    before {@product.type_id = nil }
    it {should be_invalid}
  end

  #paint
  describe "without paint_id" do
    before { @product.paint_id = nil}
    it {should be_invalid}
  end

  

  
  
end
